<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_principal_g8.Master" AutoEventWireup="true" CodeBehind="RestriccionCatedratico.aspx.cs" Inherits="AYD1_Aplicacion.RestriccionCatedratico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="restriccion">
    <Columns>
        <asp:BoundField DataField="dia" HeaderText="dia" SortExpression="dia" />
        <asp:BoundField DataField="hora_fin" HeaderText="hora_fin" SortExpression="hora_fin" />
        <asp:BoundField DataField="hora_inicio" HeaderText="hora_inicio" SortExpression="hora_inicio" />
        <asp:BoundField DataField="restriccion" HeaderText="restriccion" InsertVisible="False" ReadOnly="True" SortExpression="restriccion" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT DISTINCT [dia], [hora_fin], [hora_inicio], [restriccion] FROM [restriccion_profesor] WHERE ([profesor] = @profesor)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="1" Name="profesor" SessionField="Usuario" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <h3>Agregar</h3>
    <h3>Eliminar Restriccion</h3>
    <h3>Cambiar Restriccion</h3>
</asp:Content>
