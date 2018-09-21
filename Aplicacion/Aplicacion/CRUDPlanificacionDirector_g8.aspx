<%@ Page Title="" Language="C#" MasterPageFile="~/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="CRUDPlanificacionDirector_g8.aspx.cs" Inherits="Aplicacion.CRUDPlanificacionDirector_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
    Planificación<br />Actividades por aprobar</p>
    <asp:GridView ID="gv_averificar" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="actividad" DataSourceID="SqlDataSource1" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Acciones" ShowEditButton="True" />
            <asp:BoundField DataField="actividad" HeaderText="actividad" InsertVisible="False" ReadOnly="True" SortExpression="actividad" Visible="False" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" ReadOnly="True" SortExpression="Materia" />
            <asp:BoundField DataField="Grado" HeaderText="Grado" ReadOnly="True" SortExpression="Grado" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" ReadOnly="True" SortExpression="Seccion" />
            <asp:BoundField DataField="Salon" HeaderText="Salon" ReadOnly="True" SortExpression="Salon" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" ReadOnly="True" SortExpression="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" SortExpression="Descripcion" />
            <asp:BoundField DataField="Fecha" DataFormatString="{0: dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True" SortExpression="Fecha" />
            <asp:CheckBoxField DataField="aprobacion" HeaderText="Aprobacion" SortExpression="Aprobacion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [actividad] WHERE [actividad] = @actividad" InsertCommand="INSERT INTO [actividad] ([asignacion_profesor], [tipo], [descripcion], [aprobacion], [fecha_aprobacion], [fecha]) VALUES (@asignacion_profesor, @tipo, @descripcion, @aprobacion, @fecha_aprobacion, @fecha)" SelectCommand="SELECT a.actividad, m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha', a.aprobacion
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado WHERE a.fecha_aprobacion IS NULL AND a.aprobacion=0" UpdateCommand="UPDATE [actividad] SET [aprobacion] = @Aprobacion, [fecha_aprobacion] = getdate() WHERE [actividad] = @actividad">
        <DeleteParameters>
            <asp:Parameter Name="actividad" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="asignacion_profesor" Type="Int32" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="fecha_aprobacion" />
            <asp:Parameter DbType="Date" Name="fecha" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter Name="actividad" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <hr />
    Actividades rechazadas<asp:GridView ID="gv_rechazadas" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="actividad" datasourceid="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="actividad" HeaderText="actividad" InsertVisible="False" ReadOnly="True" SortExpression="actividad" Visible="False" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
            <asp:BoundField DataField="Grado" HeaderText="Grado" SortExpression="Grado" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" SortExpression="Seccion" />
            <asp:BoundField DataField="Salon" HeaderText="Salon" SortExpression="Salon" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Fecha" DataFormatString="{0: dd/MM/yyyy}" HeaderText="Fecha" SortExpression="Fecha" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [actividad] WHERE [actividad] = @actividad" InsertCommand="INSERT INTO [actividad] ([asignacion_profesor], [tipo], [descripcion], [aprobacion], [fecha_aprobacion], [fecha]) VALUES (@asignacion_profesor, @tipo, @descripcion, @aprobacion, @fecha_aprobacion, @fecha)" SelectCommand="SELECT a.actividad, m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha', a.aprobacion
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado WHERE a.fecha_aprobacion IS NOT NULL AND a.aprobacion=0" UpdateCommand="UPDATE [actividad] SET [asignacion_profesor] = @asignacion_profesor, [tipo] = @tipo, [descripcion] = @descripcion, [aprobacion] = @aprobacion, [fecha_aprobacion] = @fecha_aprobacion, [fecha] = @fecha WHERE [actividad] = @actividad">
        <DeleteParameters>
            <asp:Parameter Name="actividad" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="asignacion_profesor" Type="Int32" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="fecha_aprobacion" />
            <asp:Parameter DbType="Date" Name="fecha" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="asignacion_profesor" Type="Int32" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="fecha_aprobacion" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="actividad" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <hr />
    Actividades aceptadas<br />
    <asp:GridView ID="gv_aceptadas" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="actividad" datasourceid="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="actividad" HeaderText="actividad" InsertVisible="False" ReadOnly="True" SortExpression="actividad" Visible="False" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
            <asp:BoundField DataField="Grado" HeaderText="Grado" SortExpression="Grado" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" SortExpression="Seccion" />
            <asp:BoundField DataField="Salon" HeaderText="Salon" SortExpression="Salon" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Fecha" DataFormatString="{0: dd/MM/yyyy}" HeaderText="Fecha" SortExpression="Fecha" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [actividad] WHERE [actividad] = @actividad" InsertCommand="INSERT INTO [actividad] ([asignacion_profesor], [tipo], [descripcion], [aprobacion], [fecha_aprobacion], [fecha]) VALUES (@asignacion_profesor, @tipo, @descripcion, @aprobacion, @fecha_aprobacion, @fecha)" SelectCommand="SELECT a.actividad, m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha', a.aprobacion
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado WHERE a.fecha_aprobacion IS NOT NULL AND a.aprobacion=1" UpdateCommand="UPDATE [actividad] SET [asignacion_profesor] = @asignacion_profesor, [tipo] = @tipo, [descripcion] = @descripcion, [aprobacion] = @aprobacion, [fecha_aprobacion] = @fecha_aprobacion, [fecha] = @fecha WHERE [actividad] = @actividad">
        <DeleteParameters>
            <asp:Parameter Name="actividad" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="asignacion_profesor" Type="Int32" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="fecha_aprobacion" />
            <asp:Parameter DbType="Date" Name="fecha" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="asignacion_profesor" Type="Int32" />
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="aprobacion" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="fecha_aprobacion" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="actividad" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
