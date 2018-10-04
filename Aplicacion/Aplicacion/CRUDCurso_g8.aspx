<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="CRUDCurso_g8.aspx.cs" Inherits="Aplicacion.CRUDCurso_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <h1>
        Cursos</h1>

    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="curso" DataSourceID="MostrarTablaGrados" style="position: relative; top: -3px; left: 426px; height: 135px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="curso" HeaderText="curso" InsertVisible="False" ReadOnly="True" SortExpression="curso" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MostrarTablaGrados" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [curso]"></asp:SqlDataSource>
</p>
        <h4>
        Crear Grado</h4>
    <p>
         <asp:Label ID="Label1" runat="server" Text="Nombre del curso: " style="position: relative"></asp:Label>  <asp:TextBox ID="TextBoxNombreCurso" runat="server" Width="258px" style="position: relative; top: 6px; left: 13px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BotonCrearCurso" runat="server" Text="Agregar Curso" OnClick="Button1_Click" /> 
    </p>
    <h4>Eliminar Curso</h4>   
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="curso">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [curso]"></asp:SqlDataSource>


    <p>

        <asp:Button ID="BotonEliminar" runat="server" Text="Eliminar Curso" OnClick="BotonEliminar_Click" />

    </p>
    <h4> Modificar Curso</h4>
    
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="curso"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [curso]"></asp:SqlDataSource>

    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Nuevo nombre del curso:"></asp:Label>

        <asp:TextBox ID="TextBoxModificar" runat="server" Width="170px"></asp:TextBox>

    </p>
    <p>
        <asp:Button ID="BotonModificar" runat="server" Text="Modificar Curso" OnClick="BotonModificar_Click" />  </p>
</asp:Content>
