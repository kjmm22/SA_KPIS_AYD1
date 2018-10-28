<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaster/ma_maestro_g8.Master" AutoEventWireup="true" CodeBehind="pg_maestro_asistencia_g8.aspx.cs" Inherits="AYD1_Aplicacion.pg_maestro_asistencia_g8" %>
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
            <li class="breadcrumb-item active">Marcar Asistencia            </li>
        </ul>
    </div>
    <div>
        <section class="forms"> 
            <div class="col-lg-12">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Asistencia de hoy</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Fecha de hoy: </label>
                        </div>
                        <div class="form-group row">
                          <div class="col-sm-4 offset-sm-3">
                            <asp:Button ID="bt_file_denied" class="btn btn-secondary" runat="server" Text="Marcar Asistencia" />
                          </div>
                        </div>
                    </div>
                      </div>
                </div>
        </section>
    </div>

</asp:Content>
