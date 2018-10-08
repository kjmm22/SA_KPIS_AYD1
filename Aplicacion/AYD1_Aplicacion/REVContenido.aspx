<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_coordinador_g8.Master" AutoEventWireup="true" CodeBehind="REVContenido.aspx.cs" Inherits="Aplicacion.REVContenido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Contenido</h2>
        </div>
    </header>
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="pg_coordinador_inicio_g8.aspx">Inicio</a></li>
            <li class="breadcrumb-item active">Revisión de Contenido            </li>
        </ul>
    </div>
    <div>
        <section class="forms"> 
            <div class="col-lg-12">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Revisión de Contenido</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Selección de Archivo</label>
                          <div class="col-sm-9">
                            <asp:DropDownList ID="ddl_archivos_contenido" runat="server" class="form-control mb-3" DataSourceID="SQL_SLPlaner_1" DataTextField="direccion" DataValueField="direccion">
                                    <asp:ListItem>Archivo 1</asp:ListItem>
                                    <asp:ListItem>Archivo 2</asp:ListItem>
                                  </asp:DropDownList>
                              <asp:SqlDataSource ID="SQL_SLPlaner_1" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerCS %>" SelectCommand="SELECT ar.direccion
FROM archivo ar, actividad ac
WHERE ar.actividad = ac.actividad
AND ac.tipo &lt;&gt; 'examen';"></asp:SqlDataSource>
                              <asp:Button ID="bt_open_file" class="btn btn-secondary" runat="server" Text="Visualizar archivo" OnClick="bt_open_file_Click" />
                          </div>

                        </div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Comentario</label>
                          <div class="col-sm-9">
                            <asp:TextBox ID="tb_observation" runat="server" class="form-control"></asp:TextBox>
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="col-sm-4 offset-sm-3">
                            <asp:Button ID="bt_file_denied" class="btn btn-secondary" runat="server" Text="No aprobar archivo" OnClick="bt_file_denied_Click" />
                            <asp:Button ID="bt_file_approved" class="btn btn-primary" runat="server" Text="Aprobar archivo" OnClick="bt_file_approved_Click" />
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
        </section>
    </div>

</asp:Content>
