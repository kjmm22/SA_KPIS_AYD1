<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="ReporteCalificacionCatedratico_g8.aspx.cs" Inherits="Aplicacion.ReporteCalificacionCatedratico_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Reporte de calificacion</h1>
    <h3>Escoja el profesor para generar el reporte</h3>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:slplannerCS %>' SelectCommand="SELECT DISTINCT [nombre] FROM [profesor] WHERE ([tipo] = @tipo) ORDER BY [nombre] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="tipo" Type="Int32"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
  
        <table style="width: 100%;">

             <tr>
           <th>Catedrático</th>
           <th>Calificación</th>
             </tr>
            <tr>
                  <td>Nombre</td>
                 <td>nota</td>
            </tr>

        </table>
  
    <p>

    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Generar Reporte" OnClick="Button1_Click" />
    </p>
</asp:Content>
