<%-- 
By: Muawiyah Shannak
Blog: http://mushannak.blogspot.com/
Description: This sample will help you to add a Promoted links web part to you default app page.      
--%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" Title="Help" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <link href="../Content/help.css" rel="stylesheet" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div class="main-help">
        <div class="sidebar sidebar-nav-fixed">
            <ul class="bs-docs-sidenav affix">
                <li><a href="#overview">Overview</a></li>
                <li><a href="#addBanner">Add banner to SharePoint pages</a></li>
                <li><a href="#addSlide">Manage banner slides</a></li>
                <li><a href="#uploadImages">Upload slides images</a></li>
                <li><a href="#notes">Notes</a></li>
            </ul>
        </div>
        <div class="page-content">
            <section id="overview">
                <h1>Overview</h1>
                <p>The <strong>Bright Banner</strong> App featuring beautiful and easy to use slider with a nice multiple transitions. The thumbnails and buttons provide easy navigation of banners slides. This HTML banner built to be responsive and configurable through the app part properties.</p>

                <div class="sub-section">
                    <h3>Features</h3>
                    <ul>
                        <li>Touch-friendly navigation for slider and thumbnails.</li>
                        <li>16 Beautiful Transition Effects.</li>
                        <li>Able to load puffed up number of images, each with customizable description and hyperlink.</li>
                        <li>Show or hide slides by use active/inactive feature.</li>
                        <li>Responsive Size of slides and thumbnails can be dynamically changed.</li>
                        <li>Works with all SharePoint sites types, including <strong>office 365 public websites</strong>.</li>
                    </ul>
                </div>
            </section>
            <br />
            <section id="addBanner">
                <h1>Add banner to SharePoint pages</h1>
                <p>There is two ways to add the Bright Banner to SharePoint page: </p>
                <div class="sub-section">
                    <h2>Add banner using <strong>App Part</strong></h2>
                    <ol>
                        <li>Go to Settings > Edit page.</li>
                        <li>Click in the location on the page where you want to add the App Part.</li>
                        <li>On the Insert tab of the ribbon, click App Part.</li>
                        <li>Under Parts, click <strong>Bright Banner</strong> Part and then click Add.</li>
                        <li>Save and Publish the page.</li>
                    </ol>

                    <p>Adding the Bright Banner using app part functionality have some disadvantages:</p>
                    <ul>
                        <li>You will not be able to change the part size</li>
                        <li>You will not be able to use Thumbnails & Theme Style features</li>
                    </ul>
                </div>
                <br />
                <div class="sub-section">
                    <h2>Add banner using <strong>embed IFrame</strong> </h2>
                    <p>By using embed IFrame you can get all Bright Banner features and you can add the banner to all sites and subsite without installing the app to these sub sites.</p>
                    <ol>
                        <li>Go to Bright Banner app default page.</li>
                        <li>Click on <strong>Preview and Embed </strong>button (you can access the page from <a href="../pages/Preview.aspx">here</a>).
                        </li>
                        <li>Change the banner settings to be fit with your site.
                            <div>
                                <img src="../Images/IFrameSettings.png" />
                            </div>
                        </li>
                        <li>Copy the embed code.
                             <div>
                                 <img src="../Images/EmbedCode.png" />
                             </div>
                        </li>
                        <li>Go to the page that you want to add the banner to it, then go to Settings > Edit page.</li>
                        <li>Click in the location on the page where you want to add the embed IFrame.</li>
                        <li>On the Insert tab of the ribbon, click Embed Code.</li>
                        <li>Past the code to text editor, click insert button.
                              <div>
                                  <img src="../Images/EmbidCodepage.png" />
                              </div>
                        </li>
                        <li>Save and Publish the page</li>
                    </ol>
                    <p><strong>Note:</strong> sometime when use Embed Code in Office 365 public site page and after save the page, SharePoint delete some attributes from IFrame tag rather than Embed Code.</p>
                </div>
            </section>
            <br />
            <section id="addSlide">
                <h1>Manage banner slides</h1>
                <ol>
                    <li>Go to Bright Banner app default page.</li>
                    <li>To add, edit or remove slides, Click on <strong>Banner Slides List</strong> button (you can access the list from <a href="../Lists/Banner">here</a>).
                    </li>
                    <li>For each banner slide, you can fill the following fields:
                        <ul>
                            <li>URL: navigation link</li>
                            <li>Notes: description under the slide image</li>
                            <li>Image: slide image (recommendation size: 618w * 246h)</li>
                            <li>Active : Show or hide slide</li>
                        </ul>
                    </li>
                    <li>Back to app default page, then publish the banner content.
                          <div>
                              <img src="../Images/PublishContent.png" />
                          </div>
                    </li>
                </ol>
            </section>
            <br />
            <section id="uploadImages">
                <h1>Upload slides images</h1>
                <p>Using <a href="../Lists/BannerImagesLibrary">Banner Images Library</a> you can add more images to use with banner slides</p>
            </section>
            <br />
            <section id="notes">
                <h1>Note</h1>
                <p>This App build based on the <a href="http://dev7studios.com/nivo-slider/">JQuery Nivo banner </a>, read <a href="http://dev7studios.com/nivo-slider/#/documentation">nivo license</a>.</p>
                <p>Bright Banner App code : <a href="https://brightbannerapp.codeplex.com">brightbannerapp.codeplex.com</a></p>
                <p>If you find this App useful please add you review on SharePoint app store and submit your feedback and issues to <a href="http://brightbannerapp.codeplex.com/workitem/list/basic">issues section </a></p>
            </section>
            <div class="morespace"></div>
        </div>
    </div>
</asp:Content>
