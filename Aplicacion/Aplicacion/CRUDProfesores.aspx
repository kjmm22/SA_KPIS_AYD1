<%@ Page Title="" Language="C#" MasterPageFile="~/ma_principal_g8.Master" AutoEventWireup="true" CodeBehind="CRUDProfesores.aspx.cs" Inherits="Aplicacion.inicio_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Profesores:<br />
    En esta seccion se puede visualizar, editar y modificar a los profesores que esten dentro de la planita de nuestra institucion educativa.<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="profesor" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="profesor" HeaderText="profesor" InsertVisible="False" ReadOnly="True" SortExpression="profesor" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
            <asp:BoundField DataField="calificacion" HeaderText="calificacion" SortExpression="calificacion" />
            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [profesor] WHERE [profesor] = @profesor" InsertCommand="INSERT INTO [profesor] ([nombre], [codigo], [calificacion], [tipo]) VALUES (@nombre, @codigo, @calificacion, @tipo)" SelectCommand="SELECT * FROM [profesor]" UpdateCommand="UPDATE [profesor] SET [nombre] = @nombre, [codigo] = @codigo, [calificacion] = @calificacion, [tipo] = @tipo WHERE [profesor] = @profesor">
        <DeleteParameters>
            <asp:Parameter Name="profesor" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="codigo" Type="String" />
            <asp:Parameter Name="calificacion" Type="Int32" />
            <asp:Parameter Name="tipo" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="codigo" Type="String" />
            <asp:Parameter Name="calificacion" Type="Int32" />
            <asp:Parameter Name="tipo" Type="Int32" />
            <asp:Parameter Name="profesor" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [profesor] WHERE [profesor] = @profesor" InsertCommand="INSERT INTO [profesor] ([nombre], [codigo], [calificacion], [tipo]) VALUES (@nombre, @codigo, @calificacion, @tipo)" SelectCommand="SELECT * FROM [profesor]" UpdateCommand="UPDATE [profesor] SET [nombre] = @nombre, [codigo] = @codigo, [calificacion] = @calificacion, [tipo] = @tipo WHERE [profesor] = @profesor">
        <DeleteParameters>
            <asp:Parameter Name="profesor" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="nombre" Type="String" ControlID="TextBox1"/>
            <asp:ControlParameter Name="codigo" Type="String" ControlID="TextBox2"/>
            <asp:ControlParameter Name="calificacion" Type="Int32" ControlID="TextBox3"/>
            <asp:ControlParameter Name="tipo" Type="Int32" ControlID="TextBox4"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="codigo" Type="String" />
            <asp:Parameter Name="calificacion" Type="Int32" />
            <asp:Parameter Name="tipo" Type="Int32" />
            <asp:Parameter Name="profesor" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
   <b> Ingresar Nuevo Profesor:</b><table>

<tr>
    <td class="auto-style3"></td>
    <td>
       
<table id="t01" style="width:100%">


    <tr>
    <td>
        Nombre del Profesor:
    </td>
    <td class="auto-style1">
        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
</tr>
    <tr>
      <td>  Codigo del Profesor:</td>
      <td class="auto-style1">
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Calificacion:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Tipo de Profesor:</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b></b></td>
        <td>
          <center>  <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" /></center>
        </td>
    </tr>
</table></td>  </tr></table> 

    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;

</asp:Content>
