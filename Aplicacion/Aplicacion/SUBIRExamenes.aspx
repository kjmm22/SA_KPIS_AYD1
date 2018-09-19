<%@ Page Title="" Language="C#" MasterPageFile="~/ma_maestro_g8.Master" AutoEventWireup="true" CodeBehind="SUBIRExamenes.aspx.cs" Inherits="Aplicacion.SUBIRExamenes_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 353px;
        }
        .auto-style2 {
            width: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    
    <div><p>
        Seccion para cargar Examenes al sistema</p>
    <table>
  <tr>
    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    <td class="auto-style1">Cargar Archivo:<asp:FileUpload ID="FileUpload1" runat="server" />
      </td> 
    
  </tr>
  <tr>
    <td class="auto-style2"></td>
    <td class="auto-style1">Los archivos deben ser extencion .pdf/.doc/.docx&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Archivo"></asp:Label>
      </td> 
    
  </tr>
  <tr>
    <td class="auto-style2"></td>
    <td class="auto-style1">Actividad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="27px" Width="205px" DataSourceID="SqlDataSource1" DataTextField="actividad" DataValueField="actividad" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="No. Actividad"></asp:Label>
      </td> 
    <tr>
        <td class="auto-style2">

        </td>
        <td>

            <asp:Button ID="GB1" runat="server" OnClick="GB1_Click" Text="Guardar Archivo" />

        </td>
    </tr>
  </tr>
        <tr><td class="auto-style2"></td><td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S4 %>" SelectCommand="SELECT [actividad] FROM [actividad]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:S4 %>" SelectCommand="SELECT * FROM [actividad]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SDS3" runat="server" ConnectionString="<%$ ConnectionStrings:ArchivoSQL %>" DeleteCommand="DELETE FROM [archivo] WHERE [archivo] = @archivo" InsertCommand="INSERT INTO [archivo] ([actividad], [direccion]) VALUES (@actividad, @direccion)" SelectCommand="SELECT * FROM [archivo]" UpdateCommand="UPDATE [archivo] SET [actividad] = @actividad, [direccion] = @direccion WHERE [archivo] = @archivo">
                <DeleteParameters>
                    <asp:Parameter Name="archivo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter Name="actividad" Type="Int32" ControlID="ListBox1" />
                    <asp:ControlParameter Name="direccion" Type="String" ControlID="Label1" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="actividad" Type="Int32" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="archivo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td></tr>
        <tr>
            <td class="auto-style2">

            </td>
            <td>
                Visualizaror de Actividades:
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="actividad" DataSourceID="SqlDataSource2">
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
            </td>
        </tr>
</table></div>
</asp:Content>
