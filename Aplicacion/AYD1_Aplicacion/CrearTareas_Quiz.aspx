<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_admin_g8.Master" AutoEventWireup="true" CodeBehind="CrearTareas_Quiz.aspx.cs" Inherits="AYD1_Aplicacion.CrearTareas_Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 565px;
        }
        .auto-style2 {
            width: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Creacion de Tareas:</p>
    <p>
        <Table ID="Table1" runat="server" Height="16px" class="auto-style1">
            <tr>
                <td> Agregar Archivo Tareas: </td>
                <td> 
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="359px" />
                </td>
            </tr>
            <tr>
                <td>Describir Tarea:</td>
                <td>             
                    <asp:TextBox ID="TextBox1" runat="server" Width="352px"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td>&nbsp;</td>
                <td>             
                    <asp:Button ID="Button1" runat="server" Text="Guardar" />
                            </td>
            </tr>
        </Table>
    </p>
    <p>
        Visualizar Tareas cargadas al sistema:</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        Crear Examenes</p>
    <table ID="Table2" runat="server" Height="16px" class="auto-style1">
        <tr>
            <td class="auto-style2">
                Agregar archivo de Pruebas
            </td>
            <td>

                <asp:FileUpload ID="FileUpload2" runat="server" Width="367px" />

            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Descripcion de la Prueba
            </td>
   
            <td>

                <asp:TextBox ID="TextBox2" runat="server" Width="355px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Guardar" />

            </td>
        </tr>
    </table>
    <br />
    Visualizar Examenes cargados al sistema:<br />
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    <br />
</asp:Content>
