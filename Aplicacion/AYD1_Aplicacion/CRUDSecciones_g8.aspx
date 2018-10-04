<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="CRUDSecciones_g8.aspx.cs" Inherits="Aplicacion.CRUDSecciones_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Secciones</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="seccion" DataSourceID="FuenteSecciones" style="position: relative; top: -1px; left: 318px" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="seccion" HeaderText="seccion" InsertVisible="False" ReadOnly="True" SortExpression="seccion" />
                <asp:BoundField DataField="grado" HeaderText="grado" SortExpression="grado" />
                <asp:BoundField DataField="ciclo" HeaderText="ciclo" SortExpression="ciclo" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
        </asp:GridView> 
        <asp:SqlDataSource ID="FuenteSecciones" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [seccion]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [seccion] WHERE [seccion] = @original_seccion AND [grado] = @original_grado AND [ciclo] = @original_ciclo AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [seccion] ([grado], [ciclo], [nombre]) VALUES (@grado, @ciclo, @nombre)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [seccion] SET [grado] = @grado, [ciclo] = @ciclo, [nombre] = @nombre WHERE [seccion] = @original_seccion AND [grado] = @original_grado AND [ciclo] = @original_ciclo AND [nombre] = @original_nombre">
            <DeleteParameters>
                <asp:Parameter Name="original_seccion" Type="Int32" />
                <asp:Parameter Name="original_grado" Type="Int32" />
                <asp:Parameter Name="original_ciclo" Type="Int32" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="grado" Type="Int32" />
                <asp:Parameter Name="ciclo" Type="Int32" />
                <asp:Parameter Name="nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="grado" Type="Int32" />
                <asp:Parameter Name="ciclo" Type="Int32" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="original_seccion" Type="Int32" />
                <asp:Parameter Name="original_grado" Type="Int32" />
                <asp:Parameter Name="original_ciclo" Type="Int32" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <h4>Crear Seccion</h4>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nombre de la seccion: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Grado: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Grados" DataTextField="grado" DataValueField="grado">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Grados" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT DISTINCT [grado] FROM [grado]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" style="position: relative; top: -30px; left: 244px" AutoGenerateColumns="False" DataKeyNames="grado" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="grado" HeaderText="grado" InsertVisible="False" ReadOnly="True" SortExpression="grado" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT DISTINCT * FROM [grado]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Ciclo: "></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Ciclos" DataTextField="ciclo" DataValueField="ciclo">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Ciclos" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT DISTINCT [ciclo] FROM [ciclo]"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ciclo" DataSourceID="SqlDataSource2" style="position: relative; top: -62px; left: 202px">
            <Columns>
                <asp:BoundField DataField="ciclo" HeaderText="ciclo" InsertVisible="False" ReadOnly="True" SortExpression="ciclo" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="fecha_inicio" HeaderText="fecha_inicio" SortExpression="fecha_inicio" />
                <asp:BoundField DataField="fecha_fin" HeaderText="fecha_fin" SortExpression="fecha_fin" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT DISTINCT [ciclo], [nombre], [fecha_inicio], [fecha_fin] FROM [ciclo]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Agregar seccion" OnClick="Button1_Click" />
    </p>
</asp:Content>
