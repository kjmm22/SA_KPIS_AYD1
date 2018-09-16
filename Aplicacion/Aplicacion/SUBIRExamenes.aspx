<%@ Page Title="" Language="C#" MasterPageFile="~/main_master_g8.Master" AutoEventWireup="true" CodeBehind="SUBIRExamenes.aspx.cs" Inherits="Aplicacion.inicio_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   Cargar Examenes:<br />
&nbsp;
    <table id="t01" style="width:100%">
    <tr>
        <td>

        </td>
        <td>
            Seleccionar Archivo:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Cargar" />
        </td>
      
        <tr>
            <td> </td>
            <td>Archivo tipo .pdf/.doc/.docx</td>
        </tr>
    </tr></table>
</asp:Content>
