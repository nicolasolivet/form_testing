<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="web_form.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">
            <div class="mb-4">
                <asp:Label Text="Id" ID="lblId" runat="server" />
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-4">
                <asp:Label Text="Modelo" ID="lblModelo" runat="server" />
                <asp:TextBox runat="server" ID="txtModelo" CssClass="form-control" />
            </div>
            <div class="mb-4">
                <asp:Label Text="Descripción" runat="server" ID="lblDesc" />
                <asp:TextBox runat="server" ID="txtDesc" CssClass="form-control" TextMode="MultiLine" />
            </div>
            <div class="mb-4">
                <asp:Label Text="Color" runat="server" ID="lblColor" />
                <asp:DropDownList runat="server" ID="ddlColor" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-4">
                <asp:Label Text="Fecha" runat="server" ID="lblFecha" />
                <asp:TextBox runat="server" ID="txtFecha" TextMode="Date" CssClass="form-control" />
            </div>
            <div class="mb-4"> 
                <asp:CheckBox Text="Nuevo" ID="chBox" runat="server" />
            </div>
            <div class="mb-4">
                <asp:RadioButton Text="Nacional" ID="rbNac" GroupName="Nacional" OnCheckedChanged="rbNac_CheckedChanged" AutoPostBack="true" runat="server" />
                <asp:RadioButton Text="Importado" ID="rbImpor" GroupName="Nacional" OnCheckedChanged="rbNac_CheckedChanged" AutoPostBack="true" runat="server" />
            </div>
            <div>
                <asp:Button OnClick="btnAceptar_Click" Text="Aceptar" runat="server" ID="btnAceptar" CssClass="btn btn-primary"/>
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>
