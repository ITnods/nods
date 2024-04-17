<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admision.aspx.cs" Inherits="admision" StylesheetTheme="SkinFile" Theme="SkinFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>FORMULARIO DE ADMISIÓN</title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    </head>
	<style type="text/css">/* cuando vayamos a imprimir ... */
		@media print{
			/* indicamos el salto de pagina */
			.antesSaltoDePagina{
				display:block;
                font-size: 90%;
                font-size: smaller;
			}
			.saltoDePagina{
				display:block;
				page-break-before:always;
                font-size: 90%;
                font-size: smaller;
			}
		}
	    .auto-style1 {
            width: 100%;
            height: 1%;
        }
        .auto-style2 {
            width: 1%;
            height: 1%;
        }
        </style>

<body oncontextmenu="return false;" style="background: none transparent;">
    <form id="form1" runat="server" autocomplete="off">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="UDP">
                <ContentTemplate>

<div class="antesSaltoDePagina">
                    <table style="width: 100%; height: 100%;">
                        <tr>
                            <td style="width: 100%; height: 80%;">
                                <center>

                                    <!-- Información del encabezado-->
                                    <table style="width: 55%;">
                                        <tr>
                                            <td style="width: 10%;">
                                                <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/Images/logo_chico.jpg" />
                                            </td>
                                            <td style="width: 90%;">
                                                <table style="width: 100%; font-size: large; font-weight: bold; color: #3399FF; text-align: center;">
                                                    <tr>
                                                        <td>FORMULARIO DE INSCRIPCIÓN</td>
                                                    </tr>
                                                    <tr>
                                                        <td>COLEGIO JAVIER</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>

                                    <!-- Informacion de Inscripcion -->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;">INFORMACIÓN DE INSCRIPCIÓN</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td style="text-align: left;">Número de Solicitud:</td>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="codigoAdmision" runat="server"></asp:Label>
                                                            <asp:Label ID="ControlGrabar" runat="server" Text="Debe Presionar Grabar. No es Válido este Formulario." Font-Size="Small" ForeColor="#FF3300"></asp:Label>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left;">Año Lectivo Solicitado:</td>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="periodoEscolar" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left;">Fecha:</td>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="fechaFormulario" runat="server" ></asp:Label>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left;">Grupo:</td>
                                                        <td style="text-align: left;">
                                                            <asp:DropDownList ID="gradoAno" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="grupo" DataValueField="no_grado_ano">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ControlToValidate="gradoAno" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JavierConnectionString %>" ProviderName="<%$ ConnectionStrings:JavierConnectionString.ProviderName %>"
                                                                SelectCommand="select '-1' no_grado_ano, 'Seleccione un Grupo' grupo, 0 secuencia from dual union all select no_grado_ano, nombre_grado, secuencia from table(ad_fx_fecha_calendario) order by secuencia"></asp:SqlDataSource>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td style="text-align: left;">Edad cumplida al
                                                            <asp:Label ID="fechaCorte" runat="server" Text="Label"></asp:Label>
                                                        </td>
                                                        <td style="text-align: left;">
                                                            <asp:Label ID="edadCumplida" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>

                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />


                                    <!-- Datos del aspirante-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;" colspan="2">DATOS DEL ASPIRANTE</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nombres<br />
                                                <asp:TextBox ID="nombreAlu" runat="server" MaxLength="40" Width="300px" style="text-transform:uppercase"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nombreAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left; ">Apellidos<br />
                                                <asp:TextBox ID="apellidoAlu" runat="server" MaxLength="40" Width="300px" style="text-transform:uppercase"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ControlToValidate="apellidoAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Cédula o Pasaporte<br />
                                                <asp:TextBox ID="cedulaAlu" runat="server" MaxLength="15" Width="150px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cedulaAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Sexo<br />
                                                <asp:DropDownList ID="sexoAlu" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione el Sexo</asp:ListItem>
                                                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" ControlToValidate="sexoAlu" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Fecha de Nacimiento<br />
                                                <asp:TextBox ID="fechaNacAlu" runat="server" Width="100px"></asp:TextBox>
                                                <act:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" Format="dd/MM/yyyy" PopupPosition="BottomRight" TargetControlID="fechaNacAlu">
                                                </act:CalendarExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="fechaNacAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Motivo de Cambio
                                                <asp:TextBox ID="motivoCambioAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Dirección<br />
                                                <asp:TextBox ID="direccionAlu" runat="server" MaxLength="150" Width="362px" Height="34px" TextMode="MultiLine" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="direccionAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Nacionalidad<br />
                                                <asp:TextBox ID="nacionalidadAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ControlToValidate="nacionalidadAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Religión<br />
                                                <asp:TextBox ID="religionAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="religionAlu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Teléfono de Casa<br />
                                                <asp:TextBox ID="telefonoCasaAlu" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Colegio de Procedencia<br />
                                                <asp:TextBox ID="escuelaProcedeAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left; margin-left: 40px;">País de Procedencia<br />
                                                <asp:TextBox ID="paisProcedeAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Email de colegio de Procedencia<br />
                                                <asp:TextBox ID="emailProcedeAlu" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left">Teléfono del colegio de procedencia<br />
                                                <asp:TextBox ID="telefonoProcedeAlu" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">
                                                <asp:Label ID="Label3" Width="380px" runat="server"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:Label ID="Label4" Width="380px" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />

                                    <!-- Datos Familiares-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;">DATOS FAMILIARES</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Personas que viven con el(la) estudiante<br />
                                                <asp:DropDownList ID="viveConAlu" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione el estudiante vive con</asp:ListItem>
                                                    <asp:ListItem Value="PM">Papá y Mamá</asp:ListItem>
                                                    <asp:ListItem Value="P">Papá</asp:ListItem>
                                                    <asp:ListItem Value="M">Mamá</asp:ListItem>
                                                    <asp:ListItem Value="A">Abuelos</asp:ListItem>
                                                    <asp:ListItem Value="O">Otros</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" ControlToValidate="viveConAlu" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Estado civil de los padres<br />
                                                <asp:DropDownList ID="estadoCivilPadres" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione el Estado Civil</asp:ListItem>
                                                    <asp:ListItem Value="C">Casados</asp:ListItem>
                                                    <asp:ListItem Value="S">Separados</asp:ListItem>
                                                    <asp:ListItem Value="U">Unidos</asp:ListItem>
                                                    <asp:ListItem Value="V">Viudo(a)</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ControlToValidate="estadoCivilPadres" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Si indicó separados ¿Quién mantiene la tutela?</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td>Nombre</td>
                                                        <td>Parentesco</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="tutelaAlumno" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="tutelaParentesco" runat="server" MaxLength="30" Width="200px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">Hermanos en el Colegio<table style="width: 100%;">
                                                            <tr>
                                                                <td>Apellidos</td>
                                                                <td>Nombres</td>
                                                                <td>Grupo</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="hermanosColApe1" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="hermanosColNom1" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="hermanoColGr1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="grupo" DataValueField="no_grado_ano">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JavierConnectionString %>" ProviderName="<%$ ConnectionStrings:JavierConnectionString.ProviderName %>" SelectCommand="select '-1' no_grado_ano, 'Seleccione un Grupo' grupo, 0 secuencia from dual union all select no_grado_ano, grupo, secuencia from grado_ano order by secuencia"></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="hermanosColApe2" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="hermanosColNom2" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="hermanoColGr2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="grupo" DataValueField="no_grado_ano">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />

</div>
<div class="saltoDePagina">
                                    <!-- Datos del Acudiente-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;" colspan="2">INFORMACIÓN DEL ACUDIENTE LEGAL</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Cédula o Pasaporte<br />
                                                <asp:TextBox ID="cedulaAcu" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="cedulaAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nombres<br />
                                                <asp:TextBox ID="nombreAcu" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="nombreAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Apellidos<br />
                                                <asp:TextBox ID="apellidoAcu" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ControlToValidate="apellidoAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Teléfono de Oficina<br />
                                                <asp:TextBox ID="telOficinaAcu" runat="server" MaxLength="10" Width="100px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left;">Celular<br />
                                                <asp:TextBox ID="celularAcu" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" ControlToValidate="celularAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Lugar de Trabajo<br />
                                                <asp:TextBox ID="lugarTrabajoAcu" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="lugarTrabajoAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Email<br />
                                                <asp:TextBox ID="emailAcu" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" ControlToValidate="emailAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nacionalidad<br />
                                                <asp:TextBox ID="nacionalidadAcu" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="nacionalidadAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Profesión<br />
                                                <asp:TextBox ID="profesionAcu" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" ControlToValidate="profesionAcu" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Ex Alumno del Colegio<br />
                                                <asp:DropDownList ID="exalumnoAcu" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione una opción</asp:ListItem>
                                                    <asp:ListItem Value="S">Si</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="exalumnoAcu" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Promoción<br />
                                                <asp:TextBox ID="promocionAcu" runat="server" MaxLength="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />

                                    <!-- Datos del Papa-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;" colspan="2">INFORMACIÓN DEL PAPÁ</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Cédula o Pasaporte<br />
                                                <asp:TextBox ID="cedulaPa" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="cedulaPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nombres<br />
                                                <asp:TextBox ID="nombrePa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="nombrePa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Apellidos<br />
                                                <asp:TextBox ID="apellidoPa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="apellidoPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Teléfono de Oficina<br />
                                                <asp:TextBox ID="telOficinaPa" runat="server" MaxLength="10" Width="100px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left;">Celular<br />
                                                <asp:TextBox ID="celularPa" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="celularPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Lugar de Trabajo<br />
                                                <asp:TextBox ID="lugarTrabajoPa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="lugarTrabajoPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Email<br />
                                                <asp:TextBox ID="emailPa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="emailPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nacionalidad<br />
                                                <asp:TextBox ID="nacionalidadPa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="nacionalidadPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Profesión<br />
                                                <asp:TextBox ID="profesionPa" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="profesionPa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Ex Alumno del Colegio<br />
                                                <asp:DropDownList ID="exalumnoPa" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione una opción</asp:ListItem>
                                                    <asp:ListItem Value="S">Si</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="exalumnoPa" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Promoción<br />
                                                <asp:TextBox ID="promocionPa" runat="server" MaxLength="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />

                                    <!-- Datos de la Mama-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;" colspan="2">INFORMACIÓN DE LA MAMÁ</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Cédula o Pasaporte<br />
                                                <asp:TextBox ID="cedulaMa" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="cedulaMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nombres<br />
                                                <asp:TextBox ID="nombreMa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="nombreMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Apellidos<br />
                                                <asp:TextBox ID="apellidoMa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="apellidoMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Teléfono de Oficina<br />
                                                <asp:TextBox ID="telOficinaMa" runat="server" MaxLength="10" Width="100px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left;">Celular<br />
                                                <asp:TextBox ID="celularMa" runat="server" MaxLength="15" Width="100px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="celularMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Lugar de Trabajo<br />
                                                <asp:TextBox ID="lugarTrabajoMa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="lugarTrabajoMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Email<br />
                                                <asp:TextBox ID="emailMa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="emailMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Nacionalidad<br />
                                                <asp:TextBox ID="nacionalidadMa" runat="server" MaxLength="40" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="nacionalidadMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Profesión<br />
                                                <asp:TextBox ID="profesionMa" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="profesionMa" ErrorMessage="** Obligatorio llenar **" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">Ex Alumno del Colegio<br />
                                                <asp:DropDownList ID="exalumnoMa" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione una opción</asp:ListItem>
                                                    <asp:ListItem Value="S">Si</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="exalumnoMa" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="text-align: left;">Promoción<br />
                                                <asp:TextBox ID="promocionMa" runat="server" MaxLength="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <br />

</div>
<div class="saltoDePagina">
                                    <!-- Historial Clinico -->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;">HISTORIAL CLÍNICO DEL ASPIRANTE</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">Autoriza el uso de los medicamentos usados en el colegio?<br />
                                                <asp:DropDownList ID="AutorizaUsoMedicAlu" runat="server">
                                                    <asp:ListItem Value="-1">Seleccione una opción</asp:ListItem>
                                                    <asp:ListItem Value="S">Si</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" ControlToValidate="AutorizaUsoMedicAlu" ErrorMessage="** Obligatorio llenar **" InitialValue="-1" ValidationGroup="ValidaCampos"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    ¿El estudiante toma algún medicamento especial? Si su respuesta es afirmativa, especifique:<br />
                                                    <asp:TextBox ID="medicamentoUsadoAlu" runat="server" Height="34px" MaxLength="400" TextMode="MultiLine" Width="514px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">¿Sufre el estudiante de alergias a algún tipo de comida, medicina, picadura de abeja o alguna otra sustancia?&nbsp; Si su respuesta es afirmativa, especifique:<br />
                                                    <asp:TextBox ID="alegiaAlu" runat="server" Height="34px" MaxLength="400" TextMode="MultiLine" Width="514px"></asp:TextBox>
                                                </td>
                                        </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    &nbsp;</td>
                                            </tr>
                                        </caption>
                                    </table>
                                    <br />
                                    <br />


                                    <!-- Datos de en caso de Emergencia-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" style="font-size: large; text-align: center;" colspan="3">OTRAS PERSONAS QUE SE PUEDAN LLAMAR EN CASO DE EMERGENCIA</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">Nombres</td>
                                            <td style="text-align: left">Celular</td>
                                             <td style="text-align: left">Parentesco</td>
                                        </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="nombreUrg1" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="celularUrg1" runat="server" MaxLength="10" Width="100px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="parentescoUrg1" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="nombreUrg2" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="celularUrg2" runat="server" MaxLength="10" Width="100px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="parentescoUrg2" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </caption>
                                    </table>
                                    <br />
                                    <br />

                                    <!-- Firma-->
                                    <table class="modalPopup" style="width: 55%;">
                                        <tr>
                                            <td style="text-align: left;">Fecha</td>
                                            <td style="text-align: left;">Firma del Acudiente<br /></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">
                                                &nbsp;</td><td style="text-align: left;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left;">
                                                <asp:Label ID="Label1" runat="server" Text="______________________________________" Width="300px"></asp:Label>
                                            </td>
                                            <td style="text-align: left;">
                                                <asp:Label ID="Label2" runat="server" Text="______________________________________" Width="300px"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <table style="width: 100%">
                                        <tr>
                                            <td class="auto-style1">Archivos Adjuntos </td>
                                            <td class="auto-style2" style="vertical-align: top;"></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 80%; vertical-align: top;">
                                                <asp:FileUpload ID="FileUpload1" runat="server" SkinID="FileUploadSK1" TabIndex="1" Width="80%" />
                                            </td>
                                            <td style="width: 20%; vertical-align: top;">
                                                <asp:ImageButton ID="Adjuntar_Archivo" runat="server" ImageUrl="~/Images/disk.png" OnClick="Adjuntar_Archivo_Click" TabIndex="2" ToolTip="Agregar Documento" ValidationGroup="add_file" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="width: 100%; vertical-align: top;">
                                                <asp:Panel ID="Panel10" runat="server" ScrollBars="Vertical" Width="100%">
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <br />

                                    <!-- Para uso del Colegio -->
                                    <table class="modalPopup" style="width: 90%;">
                                        <tr>
                                            <td class="accordionHeaderSelected" colspan="5" style="font-size: large; text-align: center;">PARA USO DEL COLEGIO</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left" width="20%">Revisión de documentos por</td>
                                            <td style="text-align: left" width="20%">Departamento Orientación</td>
                                            <td style="text-align: left" width="20%">Coordinación Académica</td>
                                            <td style="text-align: left" width="20%">Coordinación General</td>
                                            <td style="text-align: left" width="20%">Sello de Coordinación</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">_______________________<br /> 
                                                <br />
                                            </td>
                                            <td style="text-align: left">_______________________<br /> Atendido por</td>
                                            <td style="text-align: left">
                                                <br />
                                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Español" Enabled="False" />
                                                <br />
                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Matemáticas" Enabled="False" />
                                                <br />
                                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Inglés" Enabled="False" />
                                            </td>
                                            <td style="text-align: left">_______________________<br /> _______________________<br /> _______________________<br />
                                                <br />
                                                <table>
                                                    <tr>
                                                        <td>Admitido:</td>
                                                        <td>
                                                            <asp:CheckBox ID="CheckBox4" runat="server" Text="SI" Enabled="False" />
                                                        </td>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:CheckBox ID="CheckBox5" runat="server" Text="NO" Enabled="False" />
                                                            </td>
                                                        </tr>
                                                    </tr>
                                                </table>    
                                            </td>
                                            <td style="text-align: left">&nbsp;</td>
                                        </tr>
                                        </caption>
                                    </table>
                                    <br />
                                    <br />
</div>
                                    <!-- Grabar e Impresion-->
                                    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 1%">
                                        <tr>
                                            <td style="width: 100%; text-align: center;">
                                                <asp:Label ID="FailureText" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; text-align: center;">
                                                <asp:Button ID="Grabar" runat="server" BackColor="#3399FF" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Height="32px" OnClick="GrabarButton_Click" TabIndex="5" Text="Grabar" Width="110px" ValidationGroup="ValidaCampos" />
                                                <asp:Button ID="Imprimir" runat="server" BackColor="#3399FF" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Height="32px" OnClientClick="ImprimirAdmision()" Text="Imprimir" Visible="False" Width="110px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; text-align: center;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; text-align: center;">&nbsp;</td>
                                        </tr>
                                    </table>
                                </center>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

    </form>
</body>
<script language="javascript" type="text/javascript">
    function ImprimirAdmision() {

        var theButton = document.getElementById('Imprimir');
        var theRadiob = document.getElementById('RadioButtonList1');

        // Graba los datos del Formulario antes de imprimir
        $get('Grabar').click();

        theButton.style.display = 'none';
        if (theRadiob != null)
            theRadiob.style.display = 'none';
        window.print();
        theButton.style.display = 'inline';
        if (theRadiob != null)
            theRadiob.style.display = 'inline';
    }
</script>
</html>
