<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_master_g8.Master" AutoEventWireup="true" CodeBehind="CRUDPlanificacionMaestro_g8.aspx.cs" Inherits="Aplicacion.CRUDPlanificacion_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Planificación<br />
    Actividades por aprobar<br />
    <br />
    <asp:GridView ID="gv_EditarEliminar" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="actividad" DataSourceID="SqlDataSource5">
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Acciones" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="actividad" HeaderText="actividad" InsertVisible="False" ReadOnly="True" SortExpression="actividad" Visible="False" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" ReadOnly="True" SortExpression="Materia" />
            <asp:BoundField DataField="Grado" HeaderText="Grado" ReadOnly="True" SortExpression="Grado" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" ReadOnly="True" SortExpression="Seccion" />
            <asp:BoundField DataField="Salon" HeaderText="Salon" ReadOnly="True" SortExpression="Salon" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="Fecha" DataFormatString="{0: dd/MM/yyyy}" HeaderText="Fecha" ReadOnly="True" SortExpression="Fecha" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" DeleteCommand="DELETE FROM [actividad] WHERE [actividad] = @actividad" InsertCommand="INSERT INTO [actividad] ([asignacion_profesor], [tipo], [descripcion], [aprobacion], [fecha_aprobacion], [fecha]) VALUES (@asignacion_profesor, @tipo, @descripcion, @aprobacion, @fecha_aprobacion, @fecha)" SelectCommand="SELECT a.actividad, m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha'
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado WHERE (ap.profesor = @profesor) AND a.fecha_aprobacion IS NULL AND a.aprobacion=0" UpdateCommand="UPDATE [actividad] SET [tipo] = @tipo, [descripcion] = @descripcion, [fecha] = getdate() WHERE [actividad] = @actividad">
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
        <SelectParameters>
            <asp:SessionParameter Name="profesor" SessionField="profesor" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tipo" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="actividad" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    Actividades rechazados<br />
    <br />
<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" style="text-align: left">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </td>
            <td>
                <asp:TextBox ID="MateriaTextBox" runat="server" Text='<%# Bind("Materia") %>' />
            </td>
            <td>
                <asp:TextBox ID="GradoTextBox" runat="server" Text='<%# Bind("Grado") %>' />
            </td>
            <td>
                <asp:TextBox ID="SeccionTextBox" runat="server" Text='<%# Bind("Seccion") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalonTextBox" runat="server" Text='<%# Bind("Salon") %>' />
            </td>
            <td>
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
            </td>
            <td>
                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No se han devuelto datos.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
            </td>
            <td>
                <asp:TextBox ID="MateriaTextBox" runat="server" Text='<%# Bind("Materia") %>' />
            </td>
            <td>
                <asp:TextBox ID="GradoTextBox" runat="server" Text='<%# Bind("Grado") %>' />
            </td>
            <td>
                <asp:TextBox ID="SeccionTextBox" runat="server" Text='<%# Bind("Seccion") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalonTextBox" runat="server" Text='<%# Bind("Salon") %>' />
            </td>
            <td>
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
            </td>
            <td>
                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">Materia</th>
                            <th runat="server">Grado</th>
                            <th runat="server">Seccion</th>
                            <th runat="server">Salon</th>
                            <th runat="server">Tipo</th>
                            <th runat="server">Descripcion</th>
                            <th runat="server">Fecha</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha'
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado
WHERE (ap.profesor = @profesor) AND (a.fecha_aprobacion IS NOT NULL) AND (a.aprobacion = 0)">
        <SelectParameters>
            <asp:SessionParameter Name="profesor" SessionField="profesor" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Actividades aprobados<br />
    <br />
<asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" style="text-align: left">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </td>
            <td>
                <asp:TextBox ID="MateriaTextBox" runat="server" Text='<%# Bind("Materia") %>' />
            </td>
            <td>
                <asp:TextBox ID="GradoTextBox" runat="server" Text='<%# Bind("Grado") %>' />
            </td>
            <td>
                <asp:TextBox ID="SeccionTextBox" runat="server" Text='<%# Bind("Seccion") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalonTextBox" runat="server" Text='<%# Bind("Salon") %>' />
            </td>
            <td>
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
            </td>
            <td>
                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No se han devuelto datos.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
            </td>
            <td>
                <asp:TextBox ID="MateriaTextBox" runat="server" Text='<%# Bind("Materia") %>' />
            </td>
            <td>
                <asp:TextBox ID="GradoTextBox" runat="server" Text='<%# Bind("Grado") %>' />
            </td>
            <td>
                <asp:TextBox ID="SeccionTextBox" runat="server" Text='<%# Bind("Seccion") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalonTextBox" runat="server" Text='<%# Bind("Salon") %>' />
            </td>
            <td>
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
            </td>
            <td>
                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">Materia</th>
                            <th runat="server">Grado</th>
                            <th runat="server">Seccion</th>
                            <th runat="server">Salon</th>
                            <th runat="server">Tipo</th>
                            <th runat="server">Descripcion</th>
                            <th runat="server">Fecha</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="MateriaLabel" runat="server" Text='<%# Eval("Materia") %>' />
            </td>
            <td>
                <asp:Label ID="GradoLabel" runat="server" Text='<%# Eval("Grado") %>' />
            </td>
            <td>
                <asp:Label ID="SeccionLabel" runat="server" Text='<%# Eval("Seccion") %>' />
            </td>
            <td>
                <asp:Label ID="SalonLabel" runat="server" Text='<%# Eval("Salon") %>' />
            </td>
            <td>
                <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            </td>
            <td>
                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
            </td>
            <td>
                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT m.nombre as 'Materia', g.nombre as 'Grado', se.nombre as 'Seccion', s.ubicacion as 'Salon', a.tipo as 'Tipo', a.descripcion as 'Descripcion', a.fecha as 'Fecha'
FROM actividad AS a 
INNER JOIN asignacion_profesor AS ap ON a.asignacion_profesor = ap.asignacion_profesor 
INNER JOIN materia AS m ON ap.materia=m.materia
INNER JOIN salon AS s ON ap.salon=s.salon
INNER JOIN seccion as se ON ap.seccion=se.seccion
INNER JOIN grado as g ON se.grado=g.grado
WHERE (ap.profesor = @profesor) AND a.fecha_aprobacion IS NOT NULL AND a.aprobacion=1">
        <SelectParameters>
            <asp:SessionParameter Name="profesor" SessionField="profesor" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Agregar actividad<br />
    <br />
    Clase:
    <asp:DropDownList ID="ddl_agregar_clase" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="nombre" DataValueField="asignacion_profesor">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT ap.asignacion_profesor, m.nombre 
FROM asignacion_profesor ap
INNER JOIN materia as m ON ap.materia = m.materia 
WHERE (ap.profesor = @profesor)">
        <SelectParameters>
            <asp:SessionParameter Name="profesor" SessionField="profesor" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Tipo:
    <asp:TextBox ID="tb_tipo" runat="server"></asp:TextBox>
    <br />
    Descripción: <asp:TextBox ID="tb_descripcion" runat="server"></asp:TextBox>
    <br />
    Fecha:
    <asp:Label ID="l_fechahoy" runat="server"></asp:Label>
    <br />
    <asp:Button ID="b_agregar" runat="server" OnClick="b_agregar_Click" Text="Agregar" />
    <br />
    <asp:Label ID="l_texto" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
