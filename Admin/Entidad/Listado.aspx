<%@ Page Title="Listado de entidades" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="WebForms.Admin.Entidad.Listado" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%: Scripts.Render("~/bundles/Entidad") %>

    <dx:ASPxButton ID="btnPrueba" ClientInstanceName="btnPrueba" runat="server" 
        Text="PRUEBA">
        <ClientSideEvents  Click="function(s,e){saludar();}"/>
    </dx:ASPxButton>

    <dx:ASPxButton ID="btnPrueba2" ClientInstanceName="btnPrueba2" runat="server" 
        Text="PRUEBA 2" AutoPostBack="false">
        <ClientSideEvents  Click="function(s,e){prueba_grd();}"/>
    </dx:ASPxButton>

    
    <dx:ASPxGridView ID="grdAlumno" ClientInstanceName="grdAlumno" runat="server" Width="100%"
    KeyFieldName="Id"
    EnableTheming="true" AutoGenerateColumns="False"
    OnCustomCallback="grdAlumno_CustomCallback"
    OnHtmlRowPrepared="grdAlumno_HtmlRowPrepared"
    DataSourceID="sqlDSEntidad">
    
    <Styles>
        <GroupRow HorizontalAlign="Left" Font-Bold="true" Font-Italic="true">
        </GroupRow>
        <Header Font-Bold="true"></Header>
    </Styles>  
    <Toolbars>
        <dx:GridViewToolbar>
            <Items>
                <dx:GridViewToolbarItem Command="ShowCustomizationWindow" Text="Mostra/Ocultar columnas" />
                <dx:GridViewToolbarItem Command="FullCollapse" Text="Contraer"></dx:GridViewToolbarItem>
                <dx:GridViewToolbarItem Command="FullExpand" Text="Expandir"></dx:GridViewToolbarItem>
                <dx:GridViewToolbarItem Command="ClearFilter" Text="Quitar filtros"></dx:GridViewToolbarItem>
                <dx:GridViewToolbarItem Command="Custom" Text="Eliminar" Name="Eliminar" 
                    Image-Url="../../../Content/icon/trash_can.png"></dx:GridViewToolbarItem>
                <dx:GridViewToolbarItem Text="Exportar" BeginGroup="true" AdaptivePriority="1">
                    <Items>
                        <dx:GridViewToolbarItem Command="ExportToCsv" Text="Exportar a CSV" />
                        <dx:GridViewToolbarItem Command="ExportToXls" Text="Exportar a XLS" />
                        <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Exportar a XLSX" />
                    </Items>
                </dx:GridViewToolbarItem>
                  <dx:GridViewToolbarItem image-url="../../../Content/icon/archive.png">
                    <Items>
                        <dx:GridViewToolbarItem Command="Custom" Text="Mostrar sólo activos" Name="FiltrarPorEstadoActivo"/>
                        <dx:GridViewToolbarItem Command="Custom" Text="Mostrar sólo bajas" Name="FiltrarPorEstadoBaja"/>
                        <dx:GridViewToolbarItem Command="Custom" Text="Mostrar Todos" Name="QuitarFiltroEstado"/>
                    </Items>
                </dx:GridViewToolbarItem>
                <%--<dx:GridViewToolbarItem Command="Custom" Text="Cambiar estado" Name="CambiarEstado"></dx:GridViewToolbarItem>--%>
            </Items>
        </dx:GridViewToolbar>
    </Toolbars>
    <Columns>
        <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0"
            SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" ToolTip="true" Width="80px" 
            SelectCheckBoxPosition="Left" ButtonType="Image">
            <CustomButtons>
                <dx:GridViewCommandColumnCustomButton ID="btnEdit" 
                    Image-Url="../../../Content/icon/pen.png">
                </dx:GridViewCommandColumnCustomButton>
            </CustomButtons>
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="Id" Caption="ID" Width="60px">
        </dx:GridViewDataTextColumn>
        
        <dx:GridViewDataTextColumn FieldName="Nombre" Caption="Nombre">
            <Settings AutoFilterCondition="Contains" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Descripcion" Caption="Descripción">
            <Settings AutoFilterCondition="Contains" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataSpinEditColumn FieldName="Importe" Caption="Importe">
            <Settings AutoFilterCondition="Contains"/>
        </dx:GridViewDataSpinEditColumn>
       
    </Columns>

    <SettingsCommandButton>
        <ClearFilterButton Text="Limpiar filtros"
            Image-Url="../../../Content/icon/LimpiarFiltro.png" />
    </SettingsCommandButton>
    <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
    <Settings ShowFilterRow="True" ShowFooter="True" ShowGroupPanel="true" ShowFilterBar="Visible" />
    <SettingsPager PageSize="50"></SettingsPager>
    <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="NextColumn"
        AllowDragDrop="true" EnableCustomizationWindow="true" AllowGroup="true" />
    <SettingsCookies Enabled="true" CookiesID="grdPoliza_cookie" />
    <SettingsPager Position="Top"
        ShowNumericButtons="true"
        PageSizeItemSettings-Visible="true">
        <PageSizeItemSettings Items="10, 25, 50, 75, 100" />
    </SettingsPager>
    <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
    <SettingsCommandButton>
        <ClearFilterButton Text="Limpiar filtros" />
    </SettingsCommandButton>
  <%--  <ClientSideEvents CustomButtonClick="function(s,e){gridAlumno_CustomButtonClick(s, e.buttonID);}"
        EndCallback="function(s,e){gridAlumno_EndCallback(s,e);}" 
        ToolbarItemClick="function(s,e){gridAlumno_ToolbarItemClick(s,e);}"
        />--%>

</dx:ASPxGridView>
    
    <asp:SqlDataSource ID="sqlDSEntidad" runat="server" 
        ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' 
        SelectCommand="SELECT * FROM [Entidads]">
    </asp:SqlDataSource>


</asp:Content>
