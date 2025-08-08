<%@ Page Title="Detalle Entidad" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="WebForms.Admin.Entidad.Detalle" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .fab-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 9999;
        }

        .fab-button {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background-color: #673ab7;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            cursor: pointer;
            transition: transform 0.3s;
        }

        .fab-options {
            list-style: none;
            padding: 0;
            margin: 0;
            position: absolute;
            bottom: 70px;
            right: 0;
            display: none;
            flex-direction: column;
            gap: 10px;
        }

        .fab-option {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background-color: #9575cd;
            color: white;
            border: none;
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .fab-option:hover {
                background-color: #512da8;
            }
    </style>

    <div class="fab-container">
        <div class="fab-button" onclick="toggleFabMenu()">
            <i class="fas fa-plus"></i>
            <!-- Icono principal -->
        </div>
        <ul class="fab-options" id="fabMenu">
            <li>
                <button class="fab-option" title="Micrófono"><i class="fas fa-microphone"></i></button>
            </li>
            <li>
                <button class="fab-option" title="Imprimir"><i class="fas fa-print"></i></button>
            </li>
            <li>
                <button class="fab-option" title="Captura"><i class="fas fa-camera"></i></button>
            </li>
            <li>
                <button class="fab-option" title="Compartir"><i class="fas fa-share"></i></button>
            </li>
            <li>
                <button class="fab-option" title="Cerrar"><i class="fas fa-times"></i></button>
            </li>
        </ul>
    </div>



    <div class="row">
        <div class="col-xl-6">
            <div id="panelDetalle" class="panel">
                <div class="panel-hdr">
                    <h2>INFORMACIÓN <span class="fw-300"><i>PERSONAL</i></span>
                    </h2>
                    <div class="panel-toolbar">
                        <%--<button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                        <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                        <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>--%>
                    </div>
                </div>
                <div class="panel-container show">
                    <div class="panel-content">
                        <div class="panel-tag">
                            Select2 can take a regular select box with search options within the Select control
                        </div>
                        <div class="form-group">
                            <dx:ASPxTextBox ID="txtEntidadNombre"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Nombre"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-default">
                                Basic Select
                            </label>
                            <select class="select2 form-control w-100" id="single-default">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Use <code>.select2</code> class for basic select2 control.</div>
                        </div>
                        <div class="form-group">

                            <label class="form-label" for="single-label">
                                Single Select with Label
                            </label>
                            <select class="select2 form-control" id="single-label">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-placeholder">
                                Single Placeholder
                            </label>
                            <select class="select2-placeholder form-control" id="single-placeholder">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">A placeholder value can be defined and will be displayed until a selection is made. Select2 uses the placeholder attribute on multiple select boxes.</div>
                        </div>
                        <div>
                            <dx:ASPxTextBox ID="ASPxTextBox1"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Campo 2"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <div>
                            <dx:ASPxTextBox ID="ASPxTextBox2"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Campo 3"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <dx:ASPxTextBox ID="ASPxTextBox3"
                            ClientInstanceName="txtEntidadNombre"
                            runat="server" Width="100%"
                            Caption="Campo 4"
                            DisabledStyle-ForeColor="Black">
                            <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                            <InvalidStyle BackColor="LightPink" />
                            <CaptionSettings Position="Top" />
                            <CaptionStyle Font-Bold="true"></CaptionStyle>
                            <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                ErrorTextPosition="Bottom" SetFocusOnError="true"
                                Display="Dynamic" ValidateOnLeave="true">
                                <RequiredField IsRequired="true"
                                    ErrorText="El Nombre es Obligatorio." />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                        <dx:ASPxTextBox ID="ASPxTextBox4"
                            ClientInstanceName="txtEntidadNombre"
                            runat="server" Width="100%"
                            Caption="Campo 5"
                            DisabledStyle-ForeColor="Black">
                            <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                            <InvalidStyle BackColor="LightPink" />
                            <CaptionSettings Position="Top" />
                            <CaptionStyle Font-Bold="true"></CaptionStyle>
                            <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                ErrorTextPosition="Bottom" SetFocusOnError="true"
                                Display="Dynamic" ValidateOnLeave="true">
                                <RequiredField IsRequired="true"
                                    ErrorText="El Nombre es Obligatorio." />
                            </ValidationSettings>
                        </dx:ASPxTextBox>



                        <div class="form-group">
                            <label class="form-label" for="single-disabled">
                                Disabled Mode
                            </label>
                            <select class="select2 form-control" id="single-disabled" disabled="">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Select2 will respond to the <code>disabled</code> attribute on <code>&lt;select&gt;</code> elements. You can also initialize Select2 with <code>disabled: true</code> to get the same effect.</div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-disabled-result">
                                Disabled Result
                            </label>
                            <select class="select2 form-control" id="single-disabled-result">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI" disabled="">Hawaii(disabled)</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR" disabled="">Oregon(disabled)</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT" disabled="">Montana(disabled)</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="hide-search">
                                Hiding the search box
                            </label>
                            <select class="js-hide-search form-control" id="hide-search">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Select2 allows you to hide the search box depending on the number of options which are displayed. In this example, we use the value <code>Infinity</code> to tell Select2 to never display the search box.</div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="select2-ajax">
                                Select remote Ajax search
                            </label>
                            <select data-placeholder="Select a state..." class="js-data-example-ajax form-control" id="select2-ajax"></select>
                            <div class="help-block">You can configure how Select2 searches for remote data using the ajax option. Select2 will pass any options in the ajax object to jQuery's <code>$.ajax</code> function, or the transport function you specify.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-6">
            <div id="panelContacto" class="panel">
                <div class="panel-hdr">
                    <h2>DATOS DE <span class="fw-300"><i>CONTACTO</i></span>
                    </h2>
                    <div class="panel-toolbar">
                        <%--<button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                        <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                        <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>--%>
                    </div>
                </div>
                <div class="panel-container show">
                    <div class="panel-content">
                        <div class="panel-tag">
                            Select2 can take a regular select box with search options within the Select control
                        </div>
                        <div class="form-group">
                            <dx:ASPxTextBox ID="ASPxTextBox5"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Nombre"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-default">
                                Basic Select
                            </label>
                            <select class="select2 form-control w-100" id="single-default">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Use <code>.select2</code> class for basic select2 control.</div>
                        </div>
                        <div class="form-group">

                            <label class="form-label" for="single-label">
                                Single Select with Label
                            </label>
                            <select class="select2 form-control" id="single-label">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-placeholder">
                                Single Placeholder
                            </label>
                            <select class="select2-placeholder form-control" id="single-placeholder">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">A placeholder value can be defined and will be displayed until a selection is made. Select2 uses the placeholder attribute on multiple select boxes.</div>
                        </div>
                        <div>
                            <dx:ASPxTextBox ID="ASPxTextBox6"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Campo 2"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <div>
                            <dx:ASPxTextBox ID="ASPxTextBox7"
                                ClientInstanceName="txtEntidadNombre"
                                runat="server" Width="100%"
                                Caption="Campo 3"
                                DisabledStyle-ForeColor="Black">
                                <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                                <InvalidStyle BackColor="LightPink" />
                                <CaptionSettings Position="Top" />
                                <CaptionStyle Font-Bold="true"></CaptionStyle>
                                <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                    ErrorTextPosition="Bottom" SetFocusOnError="true"
                                    Display="Dynamic" ValidateOnLeave="true">
                                    <RequiredField IsRequired="true"
                                        ErrorText="El Nombre es Obligatorio." />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </div>
                        <dx:ASPxTextBox ID="ASPxTextBox8"
                            ClientInstanceName="txtEntidadNombre"
                            runat="server" Width="100%"
                            Caption="Campo 4"
                            DisabledStyle-ForeColor="Black">
                            <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                            <InvalidStyle BackColor="LightPink" />
                            <CaptionSettings Position="Top" />
                            <CaptionStyle Font-Bold="true"></CaptionStyle>
                            <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                ErrorTextPosition="Bottom" SetFocusOnError="true"
                                Display="Dynamic" ValidateOnLeave="true">
                                <RequiredField IsRequired="true"
                                    ErrorText="El Nombre es Obligatorio." />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                        <dx:ASPxTextBox ID="ASPxTextBox9"
                            ClientInstanceName="txtEntidadNombre"
                            runat="server" Width="100%"
                            Caption="Campo 5"
                            DisabledStyle-ForeColor="Black">
                            <DisabledStyle BackColor="LightGoldenrodYellow" Font-Bold="true" />
                            <InvalidStyle BackColor="LightPink" />
                            <CaptionSettings Position="Top" />
                            <CaptionStyle Font-Bold="true"></CaptionStyle>
                            <ValidationSettings ValidationGroup="EntidadValidationGroup"
                                ErrorTextPosition="Bottom" SetFocusOnError="true"
                                Display="Dynamic" ValidateOnLeave="true">
                                <RequiredField IsRequired="true"
                                    ErrorText="El Nombre es Obligatorio." />
                            </ValidationSettings>
                        </dx:ASPxTextBox>



                        <div class="form-group">
                            <label class="form-label" for="single-disabled">
                                Disabled Mode
                            </label>
                            <select class="select2 form-control" id="single-disabled" disabled="">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Select2 will respond to the <code>disabled</code> attribute on <code>&lt;select&gt;</code> elements. You can also initialize Select2 with <code>disabled: true</code> to get the same effect.</div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="single-disabled-result">
                                Disabled Result
                            </label>
                            <select class="select2 form-control" id="single-disabled-result">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI" disabled="">Hawaii(disabled)</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR" disabled="">Oregon(disabled)</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT" disabled="">Montana(disabled)</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="hide-search">
                                Hiding the search box
                            </label>
                            <select class="js-hide-search form-control" id="hide-search">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <div class="help-block">Select2 allows you to hide the search box depending on the number of options which are displayed. In this example, we use the value <code>Infinity</code> to tell Select2 to never display the search box.</div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="select2-ajax">
                                Select remote Ajax search
                            </label>
                            <select data-placeholder="Select a state..." class="js-data-example-ajax form-control" id="select2-ajax"></select>
                            <div class="help-block">You can configure how Select2 searches for remote data using the ajax option. Select2 will pass any options in the ajax object to jQuery's <code>$.ajax</code> function, or the transport function you specify.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
        function toggleFabMenu() {
            var menu = document.getElementById("fabMenu");
            menu.style.display = menu.style.display === "flex" ? "none" : "flex";
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">
    <div style="display: flex; justify-content: center; width: 100%; padding: 1rem 0;">
        <div class="btn-group">
            <button type="button" class="btn btn-info waves-effect waves-themed">Añadir</button>
            <button type="button" class="btn btn-primary waves-effect waves-themed">Guardar</button>
            <button type="button" class="btn btn-danger waves-effect waves-themed">Eliminar</button>
        </div>
    </div>
</asp:Content>



