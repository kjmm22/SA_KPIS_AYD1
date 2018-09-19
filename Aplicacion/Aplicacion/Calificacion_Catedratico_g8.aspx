<%@ Page Title="" Language="C#" MasterPageFile="~/ma_principal_g8.Master" AutoEventWireup="true" CodeBehind="Calificacion_Catedratico_g8.aspx.cs" Inherits="Aplicacion.Calificacion_Catedratico_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Calificación del Catedrático</h1>
    <p>
        <h4>Escoja el catedratico a calificar</h4>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Catedraticos" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
        <asp:SqlDataSource ID="Catedraticos" runat="server" ConnectionString="<%$ ConnectionStrings:slplannerConnectionString %>" SelectCommand="SELECT [nombre], [profesor] FROM [profesor] WHERE ([tipo] = @tipo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="tipo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <h2>Pregunta 1</h2>
        ¿Qué tan actualizado, con respecto a sus conocimientos sobre el tema/curso que imparte cree que se encuentra el catedratico?
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;Nada </asp:ListItem>
            <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;Muy poco</asp:ListItem>
            <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;Poco</asp:ListItem>
            <asp:ListItem Value="4">&nbsp;&nbsp;&nbsp;Algo</asp:ListItem>
            <asp:ListItem Value="5">&nbsp;&nbsp;&nbsp;Mucho</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <h2>Pregunta 2</h2>
        ¿Es regular en su cumplimiento de horario laboral y de catedra?
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;Nada </asp:ListItem>
            <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;Muy poco</asp:ListItem>
            <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;Poco</asp:ListItem>
            <asp:ListItem Value="4">&nbsp;&nbsp;&nbsp;Algo</asp:ListItem>
            <asp:ListItem Value="5">&nbsp;&nbsp;&nbsp;Mucho</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <h2> Pregunta 3 </h2>
        ¿Considera usted que el catedratico posee el conocimiento por completo del tema/curso impartido?
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;Nada </asp:ListItem>
            <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;Muy poco</asp:ListItem>
            <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;Poco</asp:ListItem>
            <asp:ListItem Value="4">&nbsp;&nbsp;&nbsp;Algo</asp:ListItem>
            <asp:ListItem Value="5">&nbsp;&nbsp;&nbsp;Mucho</asp:ListItem>
        </asp:RadioButtonList>

        
    </p>
    <p>
        <h2>Pregunta 4</h2>
        ¿Considera usted que e catedrático maneja de manera correcta a los distintos grupos de estudiantes y tiene buena relacion con los mismos?
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;Nada </asp:ListItem>
            <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;Muy poco</asp:ListItem>
            <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;Poco</asp:ListItem>
            <asp:ListItem Value="4">&nbsp;&nbsp;&nbsp;Algo</asp:ListItem>
            <asp:ListItem Value="5">&nbsp;&nbsp;&nbsp;Mucho</asp:ListItem>
        </asp:RadioButtonList>

    </p>
    <p>
        <h2>Pregunta 5</h2>
        ¿Emite una retroalimentacion de las actividades que se realizan tanto como en el salon de clases como tambien tareas y trabajos en casa?  
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;Nada </asp:ListItem>
            <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;Muy poco</asp:ListItem>
            <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;Poco</asp:ListItem>
            <asp:ListItem Value="4">&nbsp;&nbsp;&nbsp;Algo</asp:ListItem>
            <asp:ListItem Value="5">&nbsp;&nbsp;&nbsp;Mucho</asp:ListItem>
        </asp:RadioButtonList>


    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Calificar" OnClick="Button1_Click" />
    </p>
</asp:Content>
