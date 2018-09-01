<%@ Page Title="" Language="C#" MasterPageFile="~/main_master_g8.Master" AutoEventWireup="true" CodeBehind="CRUDGrados_g8.aspx.cs" Inherits="Aplicacion.CRUDGrados_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <h1>
        GRADOS</h1>

    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="grado" DataSourceID="MostrarTablaGrados" style="position: relative; top: -3px; left: 426px; height: 135px">
            <Columns>
                <asp:BoundField DataField="grado" HeaderText="grado" InsertVisible="False" ReadOnly="True" SortExpression="grado" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MostrarTablaGrados" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [grado]"></asp:SqlDataSource>
</p>
        <h4>
        Crear Grado</h4>
    <p>
         <asp:Label ID="Label1" runat="server" Text="Nombre del grado: " style="position: relative"></asp:Label>  <asp:TextBox ID="TextBoxNombreGrado" runat="server" Width="258px" style="position: relative; top: 6px; left: 13px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BotonCrearGrado" runat="server" Text="Agregar Grado" OnClick="Button1_Click" /> 
    </p>
</asp:Content>
