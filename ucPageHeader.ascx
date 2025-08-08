﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPageHeader.ascx.cs" Inherits="WebForms.ucPageHeader" %>
<%@ Register Src="~/ucNavBar_Top_Right.ascx" TagPrefix="uc1" TagName="ucNavBar_Top_Right" %>

<header class="page-header" role="banner">

    <!-- we need this logo when user switches to nav-function-top -->
    <div class="page-logo">
        <a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut">
            <img src="../../../Content/img/logo.png" alt="SmartAdmin WebApp" aria-roledescription="logo">
            <span class="page-logo-text mr-1">SmartAdmin WebApp</span>
            <span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
            <i class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
        </a>
    </div>

    <!-- DOC: nav menu layout change shortcut -->
    <div class="hidden-md-down dropdown-icon-menu position-relative">
        <a href="#" class="header-btn btn js-waves-off" data-action="toggle"
            data-class="nav-function-hidden" title="Hide Navigation">
            <i class="ni ni-menu"></i>
        </a>
        <ul>
            <li>
                <a href="#" class="btn js-waves-off"
                    data-action="toggle" data-class="nav-function-minify"
                    title="Minify Navigation">
                    <i class="ni ni-minify-nav"></i>
                </a>
            </li>
            <li>
                <a href="#" class="btn js-waves-off" data-action="toggle"
                    data-class="nav-function-fixed" title="Lock Navigation">
                    <i class="ni ni-lock-nav"></i>
                </a>
            </li>
        </ul>
    </div>
    <!-- DOC: mobile button appears during mobile width -->

    <div class="hidden-lg-up">
        <a href="#" class="header-btn btn press-scale-down" data-action="toggle" data-class="mobile-nav-on">
            <i class="ni ni-menu"></i>
        </a>
    </div>

    <div class="search">
        <form class="app-forms hidden-xs-down" role="search"
            action="page_search.html" autocomplete="off">
            <input type="text" id="search-field"
                placeholder="Buscar ..."
                class="form-control" tabindex="1">
            <a href="#" onclick="return false;"
                class="btn-danger btn-search-close js-waves-off d-none"
                data-action="toggle" data-class="mobile-search-on">
                <i class="fal fa-times"></i>
            </a>
        </form>
    </div>

    <%--RIGHT TOP BAR--%>
    <div class="ml-auto d-flex">
        
        <uc1:ucNavBar_Top_Right runat="server" id="ucNavBar_Top_Right" />

    </div>

    <%--FIN RIGHT TOP BAR--%>
</header>
