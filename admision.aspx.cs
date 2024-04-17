using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class admision : System.Web.UI.Page
{
    //HttpCookie JavierCodUsr = new HttpCookie("CodSolicitud");
    MultiClass mc = new MultiClass();

    protected void Page_Init(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Cookies.Clear();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        periodoEscolar.Text = mc.get_periodo_admision();
        fechaFormulario.Text = mc.get_fecha_sistema();
        fechaCorte.Text = mc.get_fecha_calculo_admision();
    }


    protected void GrabarButton_Click(object sender, EventArgs e)
    {
        string gr = gradoAno.SelectedValue;
        string sexo = sexoAlu.SelectedValue;
        string fnac = fechaNacAlu.Text;
        int    periodo = Convert.ToInt32( periodoEscolar.Text );

        string ced = cedulaAlu.Text;
        string nom = nombreAlu.Text;
        string ape = apellidoAlu.Text;
        string nacional = telefonoCasaAlu.Text;
        string escprocede = escuelaProcedeAlu.Text;
        string paisprocede = paisProcedeAlu.Text;
        string emailprocede = emailProcedeAlu.Text;
        string telprocede = telefonoProcedeAlu.Text;
        string motcambio = motivoCambioAlu.Text;
        string direccion = direccionAlu.Text;
        string religion = religionAlu.Text;
        string telcasa = telefonoCasaAlu.Text;

        string herColApe1 = hermanosColApe1.Text;
        string herColNom1 = hermanosColNom1.Text;
        string herColGr1 = "";
        if (hermanoColGr1.SelectedValue != "-1") herColGr1 = hermanoColGr1.SelectedValue;

        string herColApe2 = hermanosColApe2.Text;
        string herColNom2 = hermanosColNom1.Text;
        string herColGr2 ="";
        if (hermanoColGr2.SelectedValue != "-1") herColGr2 = hermanoColGr2.SelectedValue;

        // Otros datos del Alumno
        string viveConAl = viveConAlu.SelectedValue;
        string estCivilPadre = estadoCivilPadres.Text;
        string tutAlumno = tutelaAlumno.Text;
        string tutParent = tutelaParentesco.Text;

        // Datos del Acudiente
        string nomAcu = nombreAcu.Text;
        string apeAcu = apellidoAcu.Text;
        string cedAcu = cedulaAcu.Text;
        string lugTrabajoAcu = lugarTrabajoAcu.Text;
        string celAcu = celularAcu.Text;
        string emAcu = emailAcu.Text;
        string nacAcu = nacionalidadAcu.Text;
        string exAcu = exalumnoAcu.SelectedValue;
        string promAcu = promocionAcu.Text;
        string telOfiAcu = telOficinaAcu.Text;
        string profAcu = profesionAcu.Text;

        // Datos del Papá
        string nomPa = nombrePa.Text;
        string apePa = apellidoPa.Text;
        string cedPa = cedulaPa.Text;
        string lugTrabajoPa = lugarTrabajoPa.Text;
        string celPa = celularPa.Text;
        string emPa = emailPa.Text;
        string nacPa = nacionalidadPa.Text;
        string exPa = exalumnoPa.SelectedValue;
        string promPa = promocionPa.Text;
        string telOfiPa = telOficinaPa.Text;
        string profPa = profesionPa.Text;

        // Datos de la Mamá
        string nomMa = nombreMa.Text;
        string apeMa = apellidoMa.Text;
        string cedMa = cedulaMa.Text;
        string lugTrabajoMa = lugarTrabajoMa.Text;
        string celMa = celularMa.Text;
        string emMa = emailMa.Text;
        string nacMa = nacionalidadMa.Text;
        string exMa = exalumnoMa.SelectedValue;
        string promMa = promocionMa.Text;
        string telOfiMa = telOficinaMa.Text;
        string profMa = profesionMa.Text;

        // Historial Clinico
        string autorizamedica = "";
        if (AutorizaUsoMedicAlu.SelectedValue != "-1") autorizamedica = AutorizaUsoMedicAlu.SelectedValue;
        string medicamentoUsado = medicamentoUsadoAlu.Text;
        string alergia = alegiaAlu.Text;

        // Datos de Emergencia
        string nomUrg1 = nombreUrg1.Text;
        string celUrg1 = celularUrg1.Text;
        string parentUrg1 = parentescoUrg1.Text;
        string nomUrg2 = nombreUrg2.Text;
        string celUrg2 = celularUrg2.Text;
        string parentUrg2 = parentescoUrg2.Text;

        Imprimir.Visible = false;
        ControlGrabar.Visible = true;
        if (Valida() > 0)
        {
            string codigo = codigoAdmision.Text;
            codigo = mc.crea_admision_alumno(codigo, periodo, ced, nom, ape, gr, sexo, fnac, nacional, escprocede, paisprocede, emailprocede, telprocede,
                     motcambio, direccion, religion, telcasa,
                     herColApe1, herColNom1, herColGr1, herColApe2, herColNom2, herColGr2,
                     viveConAl, estCivilPadre, tutAlumno, tutParent,
                     nomAcu, apeAcu, cedAcu, lugTrabajoAcu, celAcu, emAcu, nacAcu, exAcu, promAcu, telOfiAcu, profAcu,
                     nomPa, apePa, cedPa, lugTrabajoPa, celPa, emPa, nacPa, exPa, promPa, telOfiPa, profPa,
                     nomMa, apeMa, cedMa, lugTrabajoMa, celMa, emMa, nacMa, exMa, promMa, telOfiMa, profMa,
                     nomUrg1, celUrg1, parentUrg1, nomUrg2, celUrg2, parentUrg2, 
                     autorizamedica, medicamentoUsado, alergia);

            if (codigo == "-1")
            {
                FailureText.Text = "Error al Grabar. Verifique!!!";
                edadCumplida.Text = "";
            }
            else
            {
                codigoAdmision.Text = codigo;
                edadCumplida.Text = mc.get_calculo_edad( fechaNacAlu.Text );
                Imprimir.Visible = true;
                ControlGrabar.Visible = false;
            }
        }

    }
    public int Valida()
    {
        if ((exalumnoAcu.SelectedValue == "S") && (promocionAcu.Text == ""))
        {
            FailureText.Text = "Error en la Promoción del Acudiente";
            return -1;
        }
        if ((exalumnoPa.SelectedValue == "S") && (promocionPa.Text == ""))
        {
            FailureText.Text = "Error en la Promoción del Papá";
            return -1;
        }
        if ((exalumnoMa.SelectedValue == "S") && (promocionMa.Text == ""))
        {
            FailureText.Text = "Error en la Promoción de la Mamá";
            return -1;
        }


        // Solo es obligatorio para Primaria y Secundaria
        string nivel = mc.get_nivel(gradoAno.SelectedValue);
        if ((motivoCambioAlu.Text == "") && (nivel != "1"))
        {
            FailureText.Text = "Error en el Motivo de Cambio de Colegio";
            return -1;
        }
        if ((escuelaProcedeAlu.Text == "") && (nivel != "1"))
        {
            FailureText.Text = "Error en el Colegio de Procedencia";
            return -1;   
        }
        if ((paisProcedeAlu.Text == "") && (nivel != "1"))
        {
            FailureText.Text = "Error en el País del Colegio de Procedencia";
            return -1;
        }
        if ((emailProcedeAlu.Text == "") && (nivel != "1"))
        {
            FailureText.Text = "Error en el email del Colegio de Procedencia";
            return -1;
        }
        if ((telefonoProcedeAlu.Text == "") && (nivel != "1"))
        {
            FailureText.Text = "Error en el teléfono del Colegio de Procedencia";
            return -1;
        }

        FailureText.Text = "";
        return 1;
    }

}