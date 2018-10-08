<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_coordinador_g8.Master" AutoEventWireup="true" CodeBehind="CRUDRevisionExamenCoord.aspx.cs" Inherits="Aplicacion.CRUDRevisionExamenCoord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>Revisión de Examenes</strong></p>
    <asp:GridView ID="gv_Documento" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gv_Documento_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
            <asp:BoundField DataField="Salon" HeaderText="Salon" SortExpression="Salon" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" SortExpression="Seccion" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Archivo" HeaderText="Archivo" SortExpression="Archivo" />
            <asp:BoundField DataField="id" HeaderText="Identificador" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        </Columns>
    </asp:GridView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [archivo] WHERE [archivo] = @archivo" InsertCommand="INSERT INTO [archivo] ([actividad], [direccion]) VALUES (@actividad, @direccion)" SelectCommand="SELECT m.nombre as 'Materia', s.ubicacion as 'Salon', se.nombre as 'Seccion', a.tipo as 'Tipo', a.descripcion as 'Descripcion', ar.direccion as 'Archivo', ar.archivo as 'id'
FROM archivo ar
INNER JOIN actividad a on ar.actividad=a.actividad
INNER JOIN asignacion_profesor ap on a.asignacion_profesor=ap.asignacion_profesor
INNER JOIN materia m on ap.materia=m.materia 
INNER JOIN salon s on ap.salon=s.salon
INNER JOIN seccion se on ap.seccion=se.seccion
WHERE a.aprobacion=1 and a.tipo='examen'" UpdateCommand="UPDATE [archivo] SET [actividad] = @actividad, [direccion] = @direccion WHERE [archivo] = @archivo">
            <DeleteParameters>
                <asp:Parameter Name="archivo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="actividad" Type="Int32" />
                <asp:Parameter Name="direccion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="actividad" Type="Int32" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="archivo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Direccion" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT o.descripcion AS 'Comentario' 
FROM observacion AS o 
INNER JOIN archivo_observacion AS ao ON o.observacion = ao.observacion 
WHERE (ao.archivo = @archivo)">
            <SelectParameters>
                <asp:SessionParameter Name="archivo" SessionField="doc" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
