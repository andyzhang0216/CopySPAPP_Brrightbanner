<%-- 
By: Muawiyah Shannak
Blog: http://mushannak.blogspot.com/
Description: This sample will help you to add a Promoted links web part to you default app page.      
--%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" Title="Preview" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script src="../Scripts/jquery-1.7.1.min.js"></script>
    <link href="../Content/preview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div class="dd-preview">

        <span class="dd-title">Embed</span>

        <div id="embidForm">
            <div class="clearfix">
                <div class="dd-controls">
                    <p class="zise">
                        <span>
                            <label for="txtWidth">Width</label></span>
                        <input type="text" id="txtWidth" value="618px" />
                        <span>
                            <label for="txtHeight">Height</label></span>
                        <input type="text" id="txtHeight" value="100%" />
                    </p>
                    <p>
                        <span>
                            <label for="txtAnimationSpeed">Animation Speed</label></span>

                        <input type="text" id="txtAnimationSpeed" value="500" />
                        <span>
                            <label for="txtPauseTime">Pause Time</label></span>

                        <input type="text" id="txtPauseTime" value="4000" />
                    </p>

                    <p>
                        <span>
                            <label for="ddlThemeStyle">Theme Style</label></span>

                        <select id="ddlThemeStyle">
                            <option value="default" selected="selected">default</option>
                            <option value="bar">bar</option>
                            <option value="box">box</option>
                        </select>

                        <span>
                            <label for="txtThemeColor">Theme Color</label></span>

                        <input type="text" id="txtThemeColor" value="rgb(0, 114, 198)" />
                    </p>
                    <p>
                        <span>
                            <label for="ddlEffect">Effect</label></span>
                        <select id="ddlEffect">
                            <option value="random" selected="selected">Random</option>
                            <option value="sliceDownRight">Slice Down Right</option>
                            <option value="sliceDownLeft">Slice Down Left</option>
                            <option value="sliceUpRight">Slice Up Right</option>
                            <option value="sliceUpLeft">Slice Up Left</option>
                            <option value="sliceUpDown">Slice Up Down</option>
                            <option value="sliceUpDownLeft">Slice Up Down Left</option>
                            <option value="fold">Fold</option>
                            <option value="fade">Fade</option>
                            <option value="boxRandom">Box Random</option>
                            <option value="boxRain">Box Rain</option>
                            <option value="boxRainReverse">Box Rain Reverse</option>
                            <option value="boxRainGrow">Box Rain Grow</option>
                            <option value="boxRainGrowReverse">Box Rain Grow Reverse</option>
                        </select>

                        <span>
                            <label for="chkThumbnail">Thumbnail</label></span>

                        <input id="chkThumbnail" type="checkbox" />
                    </p>

                </div>
                <div class="dd-embidcode">
                    <span>
                        <label for="chkThumbnail">Embed Code</label></span>
                    <textarea id="txtEmbid"></textarea>
                </div>
                <span class="clearfix"></span>
            </div>
        </div>
        <span class="dd-title">Preview</span>

        <div class="dd-preview-area">
            <div id="divPreviewEmbid">
            </div>
        </div>
    </div>

    <script src="../Scripts/preview.js"></script>
</asp:Content>
