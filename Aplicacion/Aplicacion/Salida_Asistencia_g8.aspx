<%@ Page Title="" Language="C#" MasterPageFile="~/main_master_g8.Master" AutoEventWireup="true" CodeBehind="Salida_Asistencia_g8.aspx.cs" Inherits="Aplicacion.Salida_Asistencia_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <h1>
        Asistencia-Salida</h1>

    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="MostrarTablaasistencias" style="position: relative; top: -3px; left: 426px; height: 135px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="profesor" HeaderText="profesor" SortExpression="profesor" />
                <asp:BoundField DataField="fecha_hora" HeaderText="fecha_hora" SortExpression="fecha_hora" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MostrarTablaasistencias" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT [profesor], [fecha_hora] FROM [asistencia]"></asp:SqlDataSource>
        Asistencia-Salida</p>
    <p>
         <asp:Label ID="Label1" runat="server" Text="ID Profesor: " style="position: relative"></asp:Label>  <asp:TextBox ID="TextoId" runat="server" Width="258px" style="position: relative; top: 6px; left: 13px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Guardar" runat="server" Text="Guardar" OnClick="Button1_Click" /> 
    </p>
    <h4>&nbsp;</h4>   


    <p>

        &nbsp;</p>
    </asp:Content>
