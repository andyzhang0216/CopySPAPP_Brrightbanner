(function () {

    var clientContext = SP.ClientContext.get_current();

    var uiContext = {
        spListitems: null,
        jsItems: [],
        getObjectFromSPItems: function () {
            var objGetFieldValues;
            for (i = 0, itemsCount = this.spListitems.get_count() ; i < itemsCount; i++) {

                objGetFieldValues = this.spListitems.itemAt(i).get_fieldValues();

                if (objGetFieldValues.URL && objGetFieldValues.Image)
                {
                    objGetFieldValues.URL.Path = objGetFieldValues.URL.get_url();
                    objGetFieldValues.URL.Description = objGetFieldValues.URL.get_description();

                    objGetFieldValues.Image.Path = objGetFieldValues.Image.get_url();
                    objGetFieldValues.Image.Description = objGetFieldValues.Image.get_description();
                }

                this.jsItems.push(objGetFieldValues);
            }
        },

        getHTMLItems: function () {
            this.getObjectFromSPItems();
            var templateScript = $("#template").html();
            var templateCompiled = Handlebars.compile(templateScript);

            return templateCompiled(this).replace(/\s+/g, ' ');
        },

        getJSContent: function () {
            var htmlContent = this.getHTMLItems();
            var jsContent = "(function () {"
                           + "$('#divContent').html(\""  + htmlContent  + "\");"
                           + "})();";
                                

            return jsContent.replace(/\s+/g, ' ');
        }
    };


    function getSPItems() {

        var spList = clientContext.get_web().get_lists().getByTitle('Banner');

        var camlQuery = new SP.CamlQuery();
        camlQuery.set_viewXml("<View><Query><Where><Eq><FieldRef Name=\'Active\'/><Value Type=\'Integer\'>1</Value></Eq></Where><OrderBy><FieldRef Name='Order'/></OrderBy></Query></View>");

        uiContext.spListitems = spList.getItems(camlQuery);
        clientContext.load(uiContext.spListitems, 'Include(Comments, URL, Image)');
        clientContext.executeQueryAsync(Function.createDelegate(this, saveHtmlFile), Function.createDelegate(this, onFailure));
    }

    function saveHtmlFile() {

        var fileContent = uiContext.getJSContent();
        var filesLibrary = clientContext.get_web().get_lists().getByTitle("JSCompiledFiles");
        var fileCreateInfo = new SP.FileCreationInformation();

        fileCreateInfo.set_url("publish.js");
        fileCreateInfo.set_overwrite(true);
        fileCreateInfo.set_content(new SP.Base64EncodedByteArray());

        for (var i = 0, fileLength = fileContent.length ; i < fileLength; ++i) {
            fileCreateInfo.get_content().append(fileContent.charCodeAt(i));
        }

        // Upload the file to the root folder of the document library
        this.newFile = filesLibrary.get_rootFolder().get_files().add(fileCreateInfo);

        clientContext.load(this.newFile);
        clientContext.executeQueryAsync(Function.createDelegate(this, updateContentVersionNumber), Function.createDelegate(this, onFailure));
    }

    function updateContentVersionNumber() {

        var randomNum = Math.floor((Math.random() * 1000) + 1);
        var fileContent = "(function () {"
                        + "document.write(\"<script src='../Lists/JSCompiledFiles/publish.js?vnum={{rnum}}'><\/sc\" + \"ript>\");"
                        + "})();";

        fileContent = fileContent.replace("{{rnum}}", randomNum);


        var filesLibrary = clientContext.get_web().get_lists().getByTitle("JSCompiledFiles");
        var fileCreateInfo = new SP.FileCreationInformation();

        fileCreateInfo.set_url("content.js");
        fileCreateInfo.set_overwrite(true);
        fileCreateInfo.set_content(new SP.Base64EncodedByteArray());

        for (var i = 0, fileLength = fileContent.length ; i < fileLength; ++i) {
            fileCreateInfo.get_content().append(fileContent.charCodeAt(i));
        }

        // Upload the file to the root folder of the document library
        this.newFile = filesLibrary.get_rootFolder().get_files().add(fileCreateInfo);

        clientContext.load(this.newFile);
        clientContext.executeQueryAsync(Function.createDelegate(this, onSuccess), Function.createDelegate(this, onFailure));
    }

    function onSuccess() {
        $("#publishMessageHoldear .light").text("Published Successfully");
        $("#publishMessageHoldear .light").css('color', '#A0CE4E');
        $("#publishMessageHoldear .message").text("");
        $("#imgLoading").css('display', 'none');
    }

    function onFailure(sender, args) {
        $("#publishMessageHoldear .light").text("Publish failed, try again");
        $("#publishMessageHoldear .light").css('color', '#F05858');
        $("#publishMessageHoldear .message").text("");
        $("#btnPublish").removeAttr('disabled');
        $("#imgLoading").css('display', 'none');
    }


    $("#btnPublish").click(function () {
        $("#btnPublish").attr('disabled', 'disabled');
        $("#publishMessageHoldear .light").text("Under Process ...");
        $("#publishMessageHoldear .message").text("");
        $("#imgLoading").css('display', 'inline');
        getSPItems();
    });

})();


