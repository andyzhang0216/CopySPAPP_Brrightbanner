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
    <link id="linkThemeStyle" rel="stylesheet" />
    <link type="text/css" media="screen" href="../Content/nivo-slider.css" rel="stylesheet" />
    <SharePoint:RobotsMetaTag ID="RobotsMetaTag1" runat="server" />
</head>
<body>
    <div id="divContent">
    </div>
    <script src="../Scripts/jquery-1.7.1.min.js"></script>
    <script src="../Scripts/jquery.nivo.slider.pack.js"></script>
    <script src="../Lists/JSCompiledFiles/content.js"></script>
    <script src="../Scripts/BannerAppPart.js"></script>
</body>
</html>
