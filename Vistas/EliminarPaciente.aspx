<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarPaciente.aspx.cs" Inherits="TP_INTEGRADOR_GRUPO_4.EliminarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eliminar Paciente - Clínica Médica</title>
    <style type="text/css">
        .auto-style-etiqueta {
            width: 170px;
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="lblEncabezado" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#666666" Text="CLINICA MEDICA UTN - FRGP"></asp:Label>
                    </td>
                    <td style="text-align: right;">
                        <asp:Label ID="lblUsuarioLogueado" runat="server" Font-Bold="True" Text="Usuario: Administrador (Admin)"></asp:Label>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:HyperLink ID="hlCerrarSesion" runat="server" NavigateUrl="~/Login.aspx">Cerrar Sesión</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <hr />

            <asp:HyperLink ID="hlVolverListado" runat="server" NavigateUrl="~/ListadoPacientes.aspx">&lt;&lt; Volver al listado de pacientes</asp:HyperLink>

            <h2>Eliminar Paciente</h2>
            <p>Confirme la baja del paciente seleccionado.</p>

            <asp:Panel ID="pnlEliminarPaciente" runat="server" GroupingText="Baja de Paciente">
                <table>
                    <tr>
                        <td class="auto-style-etiqueta">DNI del Paciente:</td>
                        <td><asp:TextBox ID="txtDNI" runat="server" MaxLength="8" Width="200px" ReadOnly="True" BackColor="#EBEBEB"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Nombre y Apellido:</td>
                        <td><asp:TextBox ID="txtNombreApellido" runat="server" Width="200px" ReadOnly="True" BackColor="#EBEBEB"></asp:TextBox></td>
                        <td></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnConfirmarEliminacion" runat="server" Text="Confirmar Eliminación" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False" PostBackUrl="~/ListadoPacientes.aspx" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
