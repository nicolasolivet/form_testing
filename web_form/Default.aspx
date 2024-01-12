<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_form.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        .oculto{
            display: none;
        }
    </style>
    
    <div class="row">
        <div class="col">
            <asp:GridView runat="server" ID="dgvAutos" DataKeyNames="Id" CssClass="table table-dark table-bordered" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto"/>
                    <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Nuevo" DataField="Nuevo" />
                    <asp:CheckBoxField HeaderText="Nacional" DataField="Nacional" />
                    <asp:CommandField ShowSelectButton="true" HeaderText="Accion" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>

            <a href="AutoForm.aspx">Agregar</a>
        </div>
    </div>




</asp:Content>
