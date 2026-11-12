<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="TP_INTEGRADOR_GRUPO_4.ModificarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Paciente - Clínica Médica</title>
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

            <h2>Modificar Datos de Paciente</h2>
            <p>Modifique los campos necesarios. El DNI no se puede modificar.</p>

            <asp:Panel ID="pnlModificarPaciente" runat="server" GroupingText="Modificación de Paciente">
                <table>
                    <tr>
                        <td class="auto-style-etiqueta">DNI (No modificable):</td>
                        <td><asp:TextBox ID="txtDNI" runat="server" MaxLength="8" Width="200px" ReadOnly="True" BackColor="#EBEBEB"></asp:TextBox></td>
                        <td>
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Nombre:</td>
                        <td><asp:TextBox ID="txtNombre" runat="server" MaxLength="50" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese el nombre" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre solo puede tener letras" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ ]+$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Apellido:</td>
                        <td><asp:TextBox ID="txtApellido" runat="server" MaxLength="50" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese el apellido" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="El apellido solo puede tener letras" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ ]+$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Sexo:</td>
                        <td><asp:DropDownList ID="ddlSexo" runat="server" Width="206px">
                                <asp:ListItem Value="0">-- Seleccione --</asp:ListItem>
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                                <asp:ListItem Value="X">No binario</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Seleccione el sexo" ForeColor="Red" Display="Dynamic" InitialValue="0">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Nacionalidad:</td>
                        <td><asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="40" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Ingrese la nacionalidad" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="La nacionalidad solo puede tener letras" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ ]+$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Fecha de nacimiento:</td>
                        <td><asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ControlToValidate="txtFechaNacimiento" ErrorMessage="Ingrese la fecha de nacimiento" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Dirección:</td>
                        <td><asp:TextBox ID="txtDireccion" runat="server" MaxLength="100" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la dirección" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Provincia:</td>
                        <td><asp:DropDownList ID="ddlProvincia" runat="server" Width="206px" AutoPostBack="True">
                                <asp:ListItem Value="0">-- Seleccione --</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Seleccione la provincia" ForeColor="Red" Display="Dynamic" InitialValue="0">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Localidad:</td>
                        <td><asp:DropDownList ID="ddlLocalidad" runat="server" Width="206px">
                                <asp:ListItem Value="0">-- Seleccione --</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="Seleccione la localidad" ForeColor="Red" Display="Dynamic" InitialValue="0">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Email:</td>
                        <td><asp:TextBox ID="txtEmail" runat="server" MaxLength="100" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese el email" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email no tiene un formato válido" ForeColor="Red" Display="Dynamic" ValidationExpression="^[\w\.\-]+@[\w\-]+(\.[\w\-]+)+$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style-etiqueta">Teléfono:</td>
                        <td><asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" Width="200px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese el teléfono" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El teléfono solo puede tener números y guiones" ForeColor="Red" Display="Dynamic" ValidationExpression="^[\d\- ]{6,20}$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar Cambios" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CausesValidation="False" PostBackUrl="~/ListadoPacientes.aspx" />
                <br />
                <br />
                <asp:ValidationSummary ID="vsModificarPaciente" runat="server" ForeColor="Red" HeaderText="Revise los siguientes datos:" />
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
