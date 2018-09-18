<%@ Page Title="" Language="C#" MasterPageFile="~/main_master_g8.Master" AutoEventWireup="true" CodeBehind="SUBIRExamenes.aspx.cs" Inherits="Aplicacion.inicio_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        height: 43px;
    }
        .auto-style2 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

   Cargar Examenes:<br />
&nbsp;
    <table id="t01" style="width:100%"  class="egt">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td>
            Seleccionar Archivo:&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>

            </td>
      </tr>
        <tr>
             <td></td>
            <td class="auto-style1">Archivo tipo .pdf/.doc/.docx</td>
            <td class="auto-style1"> </td>
        </tr>
        <tr> 
             <td></td>
            <td>
                Actividad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="actividad" DataValueField="actividad" Height="29px" Width="212px"></asp:ListBox>
            </td>
            <td>

            </td>

        </tr>
        <tr>
          <td class="auto-style2"></td>
            <td class="auto-style2">

                &nbsp;</td>
               <td class="auto-style2">

            </td>
        </tr>
        
        <tr>
            <td></td>
            <td>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT [actividad] FROM [actividad]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="Datos2" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" DeleteCommand="DELETE FROM [archivo] WHERE [archivo] = @archivo" InsertCommand="INSERT INTO [archivo] ([actividad], [direccion]) VALUES (@actividad, @direccion)" SelectCommand="SELECT * FROM [archivo]" UpdateCommand="UPDATE [archivo] SET [actividad] = @actividad, [direccion] = @direccion WHERE [archivo] = @archivo">
                    <DeleteParameters>
                        <asp:Parameter Name="archivo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter Name="actividad" Type="Int32" ControlID="ListBox1"/>
                        <asp:ControlParameter Name="direccion" Type="String" ControlID="FileUpload1"/>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="actividad" Type="Int32" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="archivo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
             <td>

                &nbsp;</td>
        </tr>
        <tr>
             <td></td>
            <td colspan="2">
                 Actividades Disponibles:
            </td>
            <td>
               
            </td>
        </tr>

          <tr>
            <td></td>
            <td>
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="actividad" DataSourceID="SqlDataSource3" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="actividad" HeaderText="actividad" InsertVisible="False" ReadOnly="True" SortExpression="actividad" />
                        <asp:BoundField DataField="asignacion_profesor" HeaderText="asignacion_profesor" SortExpression="asignacion_profesor" />
                        <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:CheckBoxField DataField="aprobacion" HeaderText="aprobacion" SortExpression="aprobacion" />
                        <asp:BoundField DataField="fecha_aprobacion" HeaderText="fecha_aprobacion" SortExpression="fecha_aprobacion" />
                        <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT * FROM [actividad]"></asp:SqlDataSource>
              
            </td>
               <td>

            </td>
        </tr>
        
    </table>
</asp:Content>
