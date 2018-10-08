<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="CRUDSalon_g8.aspx.cs" Inherits="Aplicacion.CRUDSalon_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <h1>
        Salones</h1>

    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="salon" DataSourceID="MostrarTablaSalons" style="position: relative; top: -3px; left: 426px; height: 135px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="salon" HeaderText="salon" InsertVisible="False" ReadOnly="True" SortExpression="salon" />
                <asp:BoundField DataField="ubicacion" HeaderText="ubicacion" SortExpression="ubicacion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MostrarTablaSalons" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [salon]"></asp:SqlDataSource>
</p>
        <h4>
            Crear Salon</h4>
    <p>
         <asp:Label ID="Label1" runat="server" Text="Ubicacion:" style="position: relative"></asp:Label>  <asp:TextBox ID="TextBoxNombreSalon" runat="server" Width="258px" style="position: relative; top: 6px; left: 13px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BotonCrearSalon" runat="server" Text="Agregar Salon" OnClick="Button1_Click" /> 
    </p>
    <h4>Eliminar Salon</h4>   
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Salons" DataTextField="ubicacion" DataValueField="salon">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Salons" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [salon]"></asp:SqlDataSource>


    <p>

        <asp:Button ID="BotonEliminar" runat="server" Text="Eliminar Salon" OnClick="BotonEliminar_Click" />

    </p>
    <h4> Modificar Salon</h4>
    
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ModificaSalons" DataTextField="ubicacion" DataValueField="salon"></asp:DropDownList>

        <asp:SqlDataSource ID="ModificaSalons" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [salon]"></asp:SqlDataSource>

    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Nuevo nombre:"></asp:Label>

        <asp:TextBox ID="TextBoxModificar" runat="server" Width="170px"></asp:TextBox>

    </p>
    <p>
        <asp:Button ID="BotonModificar" runat="server" Text="Modificar Salon" OnClick="BotonModificar_Click" />  </p>
</asp:Content>
