<%@ Page Title="" Language="C#" MasterPageFile="~/ma_principal_g8.Master" AutoEventWireup="true" CodeBehind="pg_principal_inicio_g8.aspx.cs" Inherits="Aplicacion.pg_principal_inicio_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="hero" class="hero hero-home bg-gray">
      <div class="container">
        <div class="row d-flex">
          <div class="col-lg-6 text order-2 order-lg-1">
            <h1>SL Planner</h1>
            <p class="hero-text">SL Planner es una herramienta que permite realizar trabajo adminsitrativo de una manera mas fácil. Sus distintas caracteristicas hacen de SL Planner la mejor herramienta para la administración escolar.</p>
            <div class="CTA">
                <a href="#features" class="btn btn-primary btn-shadow btn-gradient link-scroll">Descubre más...</a>
            </div>
          </div>
          <div class="col-lg-6 order-1 order-lg-2"><img src="Content/img/Macbook.png" alt="..." class="img-fluid"></div>
        </div>
      </div>
    </section>

    <section id="browser" class="browser">
      <div class="container">
        <div class="row d-flex justify-content-center"> 
          <div class="col-lg-8 text-center">
            <h2 class="h3 mb-5">¿Cómo funciona?</h2>
            <div class="browser-mockup">
              <div id="nav-tabContent" class="tab-content">
                <div id="nav-first" role="tabpanel" aria-labelledby="nav-first-tab" class="tab-pane fade show active"><img src="Content/img/preview-3.png" alt="..." class="img-fluid"></div>
                <div id="nav-second" role="tabpanel" aria-labelledby="nav-second-tab" class="tab-pane fade"><img src="Content/img/preview-2.png" alt="..." class="img-fluid"></div>
                <div id="nav-third" role="tabpanel" aria-labelledby="nav-third-tab" class="tab-pane fade"><img src="Content/img/preview-1.png" alt="..." class="img-fluid"></div>
              </div>
            </div>
          </div>
        </div>
        <div id="myTab" role="tablist" class="nav nav-tabs">
          <div class="row">
            <div class="col-md-4"><a id="nav-first-tab" data-toggle="tab" href="#nav-first" role="tab" aria-controls="nav-first" aria-expanded="true" class="nav-item nav-link active"> <span class="number">1</span>Ponte en contacto con nosotros para dar soporte al Centro Educativo donde pertences.</a></div>
            <div class="col-md-4"><a id="nav-second-tab" data-toggle="tab" href="#nav-second" role="tab" aria-controls="nav-second" class="nav-item nav-link"> <span class="number">2</span>Un administrador del sistema creará la cuenta para los maestros del Centro Educativo.</a></div>
            <div class="col-md-4"><a id="nav-third-tab" data-toggle="tab" href="#nav-third" role="tab" aria-controls="nav-third" class="nav-item nav-link"> <span class="number">3</span>Empieza a usar todas las caracteristicas de SL Planner.</a></div>
          </div>
        </div>
      </div>
    </section>

    <section id="about_us" class="about-us bg-gray">
      <div class="container">
        <h2>Nosotros</h2>
        <div class="row">
          <p class="lead col-lg-10">SL Planner es una herramienta administrativa, cuyo fin es hacer más fácil los procesos administrativos y de control en tu Centro Educativo. </p>
        </div><a href="#" class="btn btn-primary btn-shadow btn-gradient">Descubre más...</a>
      </div>
    </section>

</asp:Content>
