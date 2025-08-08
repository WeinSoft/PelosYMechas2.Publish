<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeftAside.ascx.cs" Inherits="WebForms.ucLeftAside" %>
<%@ Register Src="~/ucLeftAside_Nav_Menu.ascx" TagPrefix="uc1" TagName="ucLeftAside_Nav_Menu" %>
<%@ Register Src="~/ucLeftAside_NavFooter.ascx" TagPrefix="uc1" TagName="ucLeftAside_NavFooter" %>



<!-- BEGIN Left Aside -->


<div class="page-logo">
    <a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative"
        data-toggle="modal" data-target="#modal-shortcut">
        <img src="../../Content/img/logo.png" alt="SmartAdmin WebApp" aria-roledescription="logo">
        <span class="page-logo-text mr-1">SmartAdmin WebApp</span>
        <span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
        <i class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
    </a>
</div>

<!-- BEGIN PRIMARY NAVIGATION -->
<nav id="js-primary-nav" class="primary-nav" role="navigation">

    <%--LOGO Y NOMBRE DE LA APLICACIÓN--%>
    <div class="nav-filter">
        <div class="position-relative">
            <input type="text" id="nav_filter_input"
                placeholder="Filter menu"
                class="form-control" tabindex="0">
            <a href="#" onclick="return false;"
                class="btn-primary btn-search-close js-waves-off" data-action="toggle"
                data-class="list-filter-active" data-target=".page-sidebar">
                <i class="fal fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <%--FIN LOGO Y NOMBRE DE LA APLICACIÓN--%>

    <%--TARJETA INFO USUARIO LOGUEADO--%>
    <div class="info-card">
        <img src="../../../Content/img/demo/avatars/avatar-admin.png" class="profile-image rounded-circle" alt="Dr. Codex Lantern">
        <div class="info-card-text">
            <a href="#" class="d-flex align-items-center text-white">
                <span class="text-truncate text-truncate-sm d-inline-block">Dr. Codex Lantern
                </span>
            </a>
            <span class="d-inline-block text-truncate text-truncate-sm">Toronto, Canada</span>
        </div>
        <img src="../../Content/img/card-backgrounds/cover-2-lg.png" class="cover" alt="cover">
        <a href="#" onclick="return false;" class="pull-trigger-btn" data-action="toggle" data-class="list-filter-active" data-target=".page-sidebar" data-focus="nav_filter_input">
            <i class="fal fa-angle-down"></i>
        </a>
    </div>
    <%--FIN TARJETA INFO USUARIO LOGUEADO--%>

    <%--MENÚ DE NAVEGACIÓN IZQUIERDA--%>
    <uc1:ucLeftAside_Nav_Menu runat="server" ID="ucLeftAside_Nav_Menu" />
    <%--FIN MENÚ DE NAVEGACIÓN IZQUIERDA--%>

    <div class="filter-message js-filter-message bg-success-600"></div>

</nav>
<!-- END PRIMARY NAVIGATION -->



<!-- NAV FOOTER -->
<uc1:ucLeftAside_NavFooter runat="server" ID="ucLeftAside_NavFooter" />
<!-- END NAV FOOTER -->


<!-- END Left Aside -->
