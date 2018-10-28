<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_maestro_g8.Master" AutoEventWireup="true" CodeBehind="RestriccionCatedratico.aspx.cs" Inherits="AYD1_Aplicacion.RestriccionCatedratico" %>
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
    <h3>Agregar Restriccion</h3>
    <p>
        Hora Inicio:&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="1">08:00:00</asp:ListItem>
            <asp:ListItem Value="2">09:00:00</asp:ListItem>
            <asp:ListItem Value="3">10:00:00</asp:ListItem>
            <asp:ListItem Value="4">11:00:00</asp:ListItem>
            <asp:ListItem Value="5">12:00:00</asp:ListItem>
            <asp:ListItem Value="6">13:00:00</asp:ListItem>
            <asp:ListItem Value="7">14:00:00</asp:ListItem>
            <asp:ListItem Value="8">15:00:00</asp:ListItem>
            <asp:ListItem Value="9">16:00:00</asp:ListItem>
            <asp:ListItem Value="10">17:00:00</asp:ListItem>
        </asp:DropDownList>
&nbsp; Hora Final:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="1">08:00:00</asp:ListItem>
            <asp:ListItem Value="2">09:00:00</asp:ListItem>
            <asp:ListItem Value="3">10:00:00</asp:ListItem>
            <asp:ListItem Value="4">11:00:00</asp:ListItem>
            <asp:ListItem Value="5">12:00:00</asp:ListItem>
            <asp:ListItem Value="6">13:00:00</asp:ListItem>
            <asp:ListItem Value="7">14:00:00</asp:ListItem>
            <asp:ListItem Value="8">15:00:00</asp:ListItem>
            <asp:ListItem Value="9">16:00:00</asp:ListItem>
            <asp:ListItem Value="10">17:00:00</asp:ListItem>

        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profesor:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="profesor">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dia:<asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem Value="Lunes"></asp:ListItem>
            <asp:ListItem Value="Martes"></asp:ListItem>
            <asp:ListItem Value="Miercoles"></asp:ListItem>
            <asp:ListItem Value="Jueves"></asp:ListItem>
            <asp:ListItem Value="Viernes"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT [profesor], [nombre] FROM [profesor]"></asp:SqlDataSource>
</p>
<p>
        <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Agregar" Width="112px" />
</p>
    <h3>Eliminar Restriccion</h3>
    <p>

        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="restriccion" DataValueField="restriccion">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT [restriccion] FROM [restriccion_profesor] WHERE ([profesor] = @profesor)">
            <SelectParameters>
                <asp:SessionParameter Name="profesor" SessionField="User" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" Text="Elminar" Height="43px" OnClick="Button2_Click" Width="96px" />

    </p>
    <h3>Cambiar Restriccion</h3>
    <p>
        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="restriccion" DataValueField="restriccion">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT [restriccion], [profesor], [hora_inicio], [hora_fin], [dia] FROM [restriccion_profesor]"></asp:SqlDataSource>
    </p>
    <p>Hora Inicio:&nbsp;
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem Value="1">08:00:00</asp:ListItem>
            <asp:ListItem Value="2">09:00:00</asp:ListItem>
            <asp:ListItem Value="3">10:00:00</asp:ListItem>
            <asp:ListItem Value="4">11:00:00</asp:ListItem>
            <asp:ListItem Value="5">12:00:00</asp:ListItem>
            <asp:ListItem Value="6">13:00:00</asp:ListItem>
            <asp:ListItem Value="7">14:00:00</asp:ListItem>
            <asp:ListItem Value="8">15:00:00</asp:ListItem>
            <asp:ListItem Value="9">16:00:00</asp:ListItem>
            <asp:ListItem Value="10">17:00:00</asp:ListItem>
        </asp:DropDownList>
&nbsp; Hora Final:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem Value="1">08:00:00</asp:ListItem>
            <asp:ListItem Value="2">09:00:00</asp:ListItem>
            <asp:ListItem Value="3">10:00:00</asp:ListItem>
            <asp:ListItem Value="4">11:00:00</asp:ListItem>
            <asp:ListItem Value="5">12:00:00</asp:ListItem>
            <asp:ListItem Value="6">13:00:00</asp:ListItem>
            <asp:ListItem Value="7">14:00:00</asp:ListItem>
            <asp:ListItem Value="8">15:00:00</asp:ListItem>
            <asp:ListItem Value="9">16:00:00</asp:ListItem>
            <asp:ListItem Value="10">17:00:00</asp:ListItem>

        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dia:<asp:DropDownList ID="DropDownList9" runat="server">
            <asp:ListItem Value="Lunes"></asp:ListItem>
            <asp:ListItem Value="Martes"></asp:ListItem>
            <asp:ListItem Value="Miercoles"></asp:ListItem>
            <asp:ListItem Value="Jueves"></asp:ListItem>
            <asp:ListItem Value="Viernes"></asp:ListItem>
        </asp:DropDownList>
        </p>
    <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" />
    </p>
    <p>

    </p>
</asp:Content>
