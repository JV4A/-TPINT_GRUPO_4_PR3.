<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="TP_INTEGRADOR_GRUPO_4.MenuAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú Administrador - Clínica Médica</title>
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
            <br />
            
            <h2>Panel de Control - Administrador</h2>
            <p>Seleccione una opción del menú para gestionar el sistema de la clínica:</p>
            <br />

            <asp:Panel ID="pnlMenuOpciones" runat="server" GroupingText="Gestión del Sistema">
                <br />
                <ul>
                    <li><asp:HyperLink ID="hlAltaPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Dar de alta nuevo Paciente</asp:HyperLink></li>
                    
                    <li><asp:HyperLink ID="hlABMLPacientes" runat="server" NavigateUrl="~/ListadoPacientes.aspx">Gestionar Pacientes</asp:HyperLink></li>

                    <li><asp:HyperLink ID="hlAltaMedico" runat="server" NavigateUrl="~/AltaMedico.aspx">Dar de alta nuevo Médico</asp:HyperLink></li>
                    
                    <li><asp:HyperLink ID="hlABMLMedicos" runat="server" NavigateUrl="~/ABMLMedicos.aspx">Gestionar Médicos y Horarios </asp:HyperLink></li>
                   
                    <li><asp:HyperLink ID="hlAsignacionTurnos" runat="server" NavigateUrl="~/AsignacionTurnos.aspx">Asignación de Turnos</asp:HyperLink></li>
                    
                    <li><asp:HyperLink ID="hlInformes" runat="server" NavigateUrl="~/InformesAdministrador.aspx">Ver Informes </asp:HyperLink></li>
                </ul>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
