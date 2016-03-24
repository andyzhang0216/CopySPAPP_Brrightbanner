<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<WebPartPages:AllowFraming ID="AllowFraming" runat="server" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <title>Bright Banner Demo</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <script src="../Scripts/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="../_layouts/MicrosoftAjax.js"> </script>
    <script type="text/javascript" src="../_layouts/15/sp.runtime.debug.js"></script>
    <script type="text/javascript" src="../_layouts/15/sp.debug.js"></script>
    <script type="text/javascript" src="../Scripts/handlebars.js"></script>
    <SharePoint:RobotsMetaTag ID="RobotsMetaTag1" runat="server" />
</head>
<body>
    <script id="template" type="text/x-handlebars-template">
        <div id='wrapper'>
            <div class='slider-wrapper theme'>
                <div id='slider' class='nivoSlider'>
                    {{#each this.jsItems}} 
                       <a href='{{URL.Path}}' target='_parent' >
                           <img src='{{Image.Path}}' data-thumb='{{Image.Path}}' alt='' title='{{Comments}}' />
                       </a>
                    {{/each}}
                </div>
            </div>
        </div>
    </script>
    <div>
        <a id="btnPublish">Publish</a>
    </div>
    <script src="../Scripts/Update.js"></script>

</body>
</html>
