<%-- 
By: Muawiyah Shannak
Blog: http://mushannak.blogspot.com/
Description: This sample will help you to add a Promoted links web part to you default app page.      
--%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <link href="../Content/default.css" rel="stylesheet" />
    <script type="text/javascript" src="../_layouts/MicrosoftAjax.js"> </script>
    <script type="text/javascript" src="../_layouts/15/sp.runtime.debug.js"></script>
    <script type="text/javascript" src="../_layouts/15/sp.debug.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/handlebars.js"></script>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div class="bb-main">
        <div class="bb-header">
            <h1>Bright Banner <small> V 1.2 </small></h1>
        </div>
        <div class="bb-content">
            <div class="bb-manage">

                <p>Welcome to the <strong>Bright Banner</strong> App for SharePoint. This app allows you to add slides banner to SharePoint pages. You can getting started <a href="../Pages/Help.aspx">here</a>.</p>

                <WebPartPages:WebPartZone ID="WebPartZone" runat="server" FrameType="None">
                    <WebPartPages:XsltListViewWebPart ID="XsltListViewAppPromotedList"
                        runat="server" ListUrl="Lists/AppPromotedList" IsIncluded="True"
                        NoDefaultStyle="TRUE" Title="Images used in switcher"
                        PageType="PAGE_NORMALVIEW" Default="False"
                        ViewContentTypeId="0x">
                    </WebPartPages:XsltListViewWebPart>
                </WebPartPages:WebPartZone>
            </div>
            <div class="bb-Publish">
                <div>
                    <p id="publishMessageHoldear"><span class="prct">{{</span> <span class="light">Don't foget</span> <span class="message"> to publish the banner to apply your modifications </span><span class="prct">}}</span> </p>
                </div>
                <div>
                    <button id="btnPublish" type="button">Publish</button>
                </div>
                <div>
                    <img id="imgLoading" src="../Images/load.gif" />
                </div>
                <script id="template" type="text/x-handlebars-template">
                    <div id='wrapper'>
                        <div class='slider-wrapper theme'>
                            <div id='slider' class='nivoSlider'>
                                {{#each this.jsItems}} 
                                   <a href='{{URL.Path}}' target='_parent'>
                                       <img src='{{Image.Path}}' data-thumb='{{Image.Path}}' alt='' title='{{Comments}}' />
                                   </a>
                                {{/each}}
                            </div>
                        </div>
                    </div>
                </script>
                <script src="../Scripts/Update.js"></script>
            </div>
        </div>
    </div>
</asp:Content>
