<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForms._Default" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%: Scripts.Render("~/bundles/Default") %>

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <dx:ASPxCallbackPanel ID="cbpDefault" ClientInstanceName="cbpDefault"
        runat="server" Width="100%"
        OnCallback="cbpDefault_Callback">
        <SettingsLoadingPanel Text="" ShowImage="false" />
        <PanelCollection>
            <dx:PanelContent>
                <dx:ASPxButton ID="btnPrueba" ClientInstanceName="btnPrueba" runat="server"
                    Text="PRUEBA DE CALLBACK" AutoPostBack="false">
                    <ClientSideEvents Click="function(s,e){btnPrueba_Click(s,e);}" />
                </dx:ASPxButton>

                <div class="row">
                    <div class="col-md-4">
                        <h2>Getting started</h2>
                        <p>
                            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h2>Get more libraries</h2>
                        <p>
                            NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h2>Web Hosting</h2>
                        <p>
                            You can easily find a web hosting company that offers the right mix of features and price for your applications.
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>

                            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton" OnClick="ASPxButton1_Click"></dx:ASPxButton>
                        </p>
                    </div>
                </div>


            </dx:PanelContent>
        </PanelCollection>
        <ClientSideEvents EndCallback="function(s,e){cbpDefault_EndCallback(s,e);}" />
    </dx:ASPxCallbackPanel>




</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="FooterContent" runat="server">
    <div class="d-flex align-items-center flex-1 text-muted">
        <span class="hidden-md-down fw-700">2020 © SmartAdmin by&nbsp;<a href='https://www.gotbootstrap.com' class='text-primary fw-500' title='gotbootstrap.com' target='_blank'>gotbootstrap.com</a></span>
    </div>
    <div>
        <ul class="list-table m-0">
            <li><a href="intel_introduction.html" class="text-secondary fw-700">About</a></li>
            <li class="pl-3"><a href="info_app_licensing.html" class="text-secondary fw-700">License</a></li>
            <li class="pl-3"><a href="info_app_docs.html" class="text-secondary fw-700">Documentation</a></li>
            <li class="pl-3 fs-xl"><a href="https://wrapbootstrap.com/user/MyOrange" class="text-secondary" target="_blank"><i class="fal fa-question-circle" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</asp:Content>

