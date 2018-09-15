<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master_g8.Master" AutoEventWireup="true" CodeBehind="CRUDCiclos_g8.aspx.cs" Inherits="Aplicacion.CRUDCiclos_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ciclos    </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ciclo" DataSourceID="DataCiclos" style="position: relative; top: -1px; left: 356px" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ciclo" HeaderText="ciclo" InsertVisible="False" ReadOnly="True" SortExpression="ciclo" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="fecha_inicio" HeaderText="fecha_inicio" SortExpression="fecha_inicio" />
                <asp:BoundField DataField="fecha_fin" HeaderText="fecha_fin" SortExpression="fecha_fin" />
                <asp:BoundField DataField="ciclo_padre" HeaderText="ciclo_padre" SortExpression="ciclo_padre" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DataCiclos" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT * FROM [ciclo]" DeleteCommand="DELETE FROM [ciclo] WHERE [ciclo] = @original_ciclo" InsertCommand="INSERT INTO [ciclo] ([nombre], [fecha_inicio], [fecha_fin], [ciclo_padre]) VALUES (@nombre, @fecha_inicio, @fecha_fin, @ciclo_padre)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ciclo] SET [nombre] = @nombre, [fecha_inicio] = @fecha_inicio, [fecha_fin] = @fecha_fin, [ciclo_padre] = @ciclo_padre WHERE [ciclo] = @original_ciclo">
        <DeleteParameters>
            <asp:Parameter Name="original_ciclo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha_inicio" />
            <asp:Parameter DbType="Date" Name="fecha_fin" />
            <asp:Parameter Name="ciclo_padre" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha_inicio" />
            <asp:Parameter DbType="Date" Name="fecha_fin" />
            <asp:Parameter Name="ciclo_padre" Type="Int32" />
            <asp:Parameter Name="original_ciclo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h4>Crear Ciclo

    </h4>
    <p>
        Nombre:&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>

         <asp:Label ID="Label1" runat="server" Text="Fecha Inicio:"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" style="position: relative; top: -12px; left: 104px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
         <asp:Label ID="Label2" runat="server" Text=" Fecha Fin:" style="position: relative"></asp:Label>&nbsp; </p>
    <p>

         <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" style="position: relative; top: -6px; left: 102px" Width="200px">
             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
             <NextPrevStyle VerticalAlign="Bottom" />
             <OtherMonthDayStyle ForeColor="#808080" />
             <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
             <SelectorStyle BackColor="#CCCCCC" />
             <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
             <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
             <WeekendDayStyle BackColor="#FFFFCC" />
         </asp:Calendar>
</p>
        <p> 
    <asp:Label ID="Label3" runat="server" Text="Ciclo:"></asp:Label>
   
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DataCiclos2" DataTextField="ciclo" DataValueField="ciclo" style="position: relative; top: 5px; left: 152px"></asp:DropDownList>
        <asp:SqlDataSource ID="DataCiclos2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT DISTINCT * FROM [ciclo]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Agregar Ciclo" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
