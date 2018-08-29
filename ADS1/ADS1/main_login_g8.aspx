<%@ Page Title="" Language="C#" MasterPageFile="~/main_master_g8.Master" AutoEventWireup="true" CodeBehind="main_login_g8.aspx.cs" Inherits="ADS1.main_login_g8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin-left: 125px;">
        <tr>
            <td>
                <img src="img/ic_login.png" width="200" height="308" />
            </td>
            <td style="width:100px">
            </td>
            <td>
                <h2>INICIO DE SESIÓN</h2><br />
                <table>
                    <tr>
                        <td style="width: 180px;">Nombre de Usuario</td>
                        <td style="width: 220px;">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 180px;">Contraseña</td>
                        <td style="width: 220px;">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 180px;">Colegio</td>
                        <td style="width: 220px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="166px">
                                <asp:ListItem>Administrador</asp:ListItem>
                                <asp:ListItem>Coordinador</asp:ListItem>
                                <asp:ListItem>Catedrático</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 180px;"></td>
                        <td style="width: 220px;">
                            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" Width="162px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
