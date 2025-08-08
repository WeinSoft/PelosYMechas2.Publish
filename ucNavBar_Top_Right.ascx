<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucNavBar_Top_Right.ascx.cs" Inherits="WebForms.ucNavBar_Top_Right" %>
<%@ Register Src="~/ucAppShortcuts.ascx" TagPrefix="uc1" TagName="ucAppShortcuts" %>
<%@ Register Src="~/ucAppMessage.ascx" TagPrefix="uc1" TagName="ucAppMessage" %>
<%@ Register Src="~/ucAppNotification.ascx" TagPrefix="uc1" TagName="ucAppNotification" %>
<%@ Register Src="~/ucAppUserMenu.ascx" TagPrefix="uc1" TagName="ucAppUserMenu" %>
<%@ Register Src="~/ucAppConfiguracion.ascx" TagPrefix="uc1" TagName="ucAppConfiguracion" %>




<asp:LoginView runat="server" ViewStateMode="Disabled">
    <AnonymousTemplate>
        <%-- <ul class="nav navbar-nav navbar-right">
            <li><a runat="server" href="~/Account/Register">Registrarse</a></li>
            <li><a runat="server" href="~/Account/Login">Iniciar sesión</a></li>

        </ul>--%>

        <a  class="header-icon"  title="Registrarse"
            href="Account/Register">
            <i class="fal fa-smile-plus"></i>
        </a>
        <a href="Account/Login" class="header-icon"
            title="Iniciar sesión">
            <i class="fal fa-user"></i>
        </a>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <%-- <ul class="nav navbar-nav navbar-right">
            <li><a runat="server" href="~/Account/Manage" title="Manage your account">Hello, <%: Context.User.Identity.GetUserName()  %> !</a></li>
            <li>
                <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" />
            </li>
        </ul>--%>
        <!-- activate app search icon (mobile) -->
        <div class="hidden-sm-up">
            <a href="#" class="header-icon" data-action="toggle" data-class="mobile-search-on" data-focus="search-field" title="Search">
                <i class="fal fa-search"></i>
            </a>
        </div>
        <!-- app settings -->
        <uc1:ucAppConfiguracion runat="server" ID="ucAppConfiguracion" />

        <!-- app shortcuts -->
        <uc1:ucAppShortcuts runat="server" ID="ucAppShortcuts" />

        <!-- app message -->
        <uc1:ucAppMessage runat="server" ID="ucAppMessage" />

        <!-- app notification -->
        <uc1:ucAppNotification runat="server" ID="ucAppNotification" />

        <!-- app user menu -->
        <uc1:ucAppUserMenu runat="server" ID="ucAppUserMenu" />


    </LoggedInTemplate>
</asp:LoginView>

