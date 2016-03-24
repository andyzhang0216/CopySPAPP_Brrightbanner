(function () {


    $('.dd-controls input').on('input', function (e) {
        applyChanges();
    });

    $('.dd-controls select').change(function () {
        applyChanges();
    });

    $(".dd-controls #chkThumbnail").click(function () {
        applyChanges();
    });

    $("#txtEmbid").focus(function () {
        var $this = $(this);
        $this.select();

        // Work around Chrome's little problem
        $this.mouseup(function () {
            $this.select();
        });
    });

    function applyChanges() {
        var embidElement = "<iframe width='{{width}}' height='{{height}}' src='{{src}}' frameborder='0' scrolling='no' seamless></iframe>";
        var embidSrc = "//{{appURL}}/AppBrightBanner/Pages/BannerAppPart.aspx?ASpeed={{ASpeed}}&PauseTime={{PauseTime}}&Effect={{Effect}}&NavThumbs={{NavThumbs}}&ThemeColor={{ThemeColor}}&ThemeStyle={{ThemeStyle}}";
        var appURL = window.location.href.substr(0, window.location.href.indexOf("/AppBrightBanner/")).replace("https://", "").replace("http://", "");
            aSpeed = encodeURIComponent($('#txtAnimationSpeed').val()),
            pauseTime = encodeURIComponent($('#txtPauseTime').val()),
            effect = encodeURIComponent($('#ddlEffect').val()),
            navThumbs = encodeURIComponent($('#chkThumbnail').is(":checked")),
            themeColor = encodeURIComponent($('#txtThemeColor').val()),
            themeStyle = encodeURIComponent($('#ddlThemeStyle').val()),
            eWidth = $('#txtWidth').val(),
            eHeight = $('#txtHeight').val();

        embidSrc = embidSrc.replace('{{appURL}}', appURL).replace('{{ASpeed}}', aSpeed).replace('{{PauseTime}}', pauseTime).replace('{{Effect}}', effect).replace('{{NavThumbs}}', navThumbs).replace('{{ThemeStyle}}', themeStyle).replace('{{ThemeColor}}', themeColor);
        embidElement = embidElement.replace('{{width}}', eWidth).replace("{{height}}", eHeight).replace('{{src}}', embidSrc);

        $('#txtEmbid').text(embidElement);
        $('#divPreviewEmbid').html(embidElement);

    }

    applyChanges();

})();


