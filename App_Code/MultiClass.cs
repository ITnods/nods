using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using Oracle.DataAccess.Client;

public delegate void MiDelegadoAsincrono0();

public class MultiClass
{


    public string crea_admision_alumno(string codigoAd, int periodo, string ced, string nom, string ape, string gr, string sexo, string fnac, string nacional,
           string escprocede, string paisprocede, string emailprocede, string telprocede,        
           string motcambio, string direccion, string religion, string telcasa,
           string herColApe1,string herColNom1,string herColGr1,
           string herColApe2, string herColNom2, string herColGr2, string viveConAlu,
           string estCivilPadre, string tutAlumno, string tutParent,
           string nomAcu, string apeAcu, string cedAcu, string lugTrabajoAcu, string celAcu, string emAcu, string nacAcu, string exAcu, string promAcu, string telOfiAcu, string profAcu,
           string nomPa, string apePa, string cedPa, string lugTrabajoPa, string celPa, string emPa, string nacPa, string exPa, string promPa, string telOfiPa, string profPa,
           string nomMa, string apeMa, string cedMa, string lugTrabajoMa, string celMa, string emMa, string nacMa, string exMa, string promMa, string telOfiMa, string profMa,
           string nomUrg1, string celUrg1, string parentUrg1, string nomUrg2, string celUrg2, string parentUrg2,
           string autorizaUsoMedic, string medicUsado, string alergiaA)
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();

            cmd.CommandText = "select ad_fx_crea_alu (:codigoAd, :periodo, :ced, :nom, :ape, :gr, :sexo, :fnac, :nacional," +
                              ":escprocede, :paisprocede, :emailprocede, :telprocede," +
                              ":motcambio, :direccion, :religion, :telcasa, " +
                              ":hercolape1, :hercolnom1, :hercolgr1, :hercolape2, :hercolnom2, :hercolgr2, :viveConAlu," +
                              ":estCivilPadre, :tutAlumno, :tutParent," +
                              ":nomAcu, :apeAcu, :cedAcu, :lugTrabajoAcu, :celAcu, :emAcu, :nacAcu, :exAcu, :promAcu, :telOfiAcu, :profAcu," +
                              ":nomPa, :apePa, :cedPa, :lugTrabajoPa, :celPa, :emPa, :nacPa, :exPa, :promPa, :telOfiPa, :profPa, " +
                              ":nomMa, :apeMa, :cedMa, :lugTrabajoMa, :celMa, :emMa, :nacMa, :exMa, :promMa, :telOfiMa, :profMa, " +
                              ":nomUrg1, :celUrg1, :parentUrg1, :nomUrg2, :celUrg2, :parentUrg2, " +
                              ":autorizaUsoMedic, :medicUsado, :alergiaA" +
                              ") codigo from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codigoAd", OracleDbType.Varchar2).Value = codigoAd;
            cmd.Parameters.Add("periodo", OracleDbType.Int32).Value = periodo;
            cmd.Parameters.Add("ced", OracleDbType.Varchar2).Value = ced;
            cmd.Parameters.Add("nom", OracleDbType.Varchar2).Value = nom;
            cmd.Parameters.Add("ape", OracleDbType.Varchar2).Value = ape;
            cmd.Parameters.Add("gr", OracleDbType.Varchar2).Value = gr;
            cmd.Parameters.Add("sexo", OracleDbType.Varchar2).Value = sexo;
            cmd.Parameters.Add("fnac", OracleDbType.Varchar2).Value = fnac;
            cmd.Parameters.Add("nacional", OracleDbType.Varchar2).Value = nacional;
            
            cmd.Parameters.Add("escprocede", OracleDbType.Varchar2).Value = escprocede;
            cmd.Parameters.Add("paisprocede", OracleDbType.Varchar2).Value = paisprocede;
            cmd.Parameters.Add("emailprocede", OracleDbType.Varchar2).Value = emailprocede;
            cmd.Parameters.Add("telprocede", OracleDbType.Varchar2).Value = telprocede;
            
            cmd.Parameters.Add("motcambio", OracleDbType.Varchar2).Value = motcambio;
            cmd.Parameters.Add("direccion", OracleDbType.Varchar2).Value = direccion;
            cmd.Parameters.Add("religion", OracleDbType.Varchar2).Value = religion;
            cmd.Parameters.Add("telcasa", OracleDbType.Varchar2).Value = telcasa;

            cmd.Parameters.Add("hercolape1", OracleDbType.Varchar2).Value = herColApe1;
            cmd.Parameters.Add("hercolnom1", OracleDbType.Varchar2).Value = herColNom1;
            cmd.Parameters.Add("hercolgr1", OracleDbType.Varchar2).Value = herColGr1;
            cmd.Parameters.Add("hercolape2", OracleDbType.Varchar2).Value = herColApe2;
            cmd.Parameters.Add("hercolnom2", OracleDbType.Varchar2).Value = herColNom2;
            cmd.Parameters.Add("hercolgr2", OracleDbType.Varchar2).Value = herColGr2;
            
            // Otros datos del Alumno
            cmd.Parameters.Add("viveconAlu", OracleDbType.Varchar2).Value = viveConAlu;
            cmd.Parameters.Add("estCivilPadre", OracleDbType.Varchar2).Value = estCivilPadre;
            cmd.Parameters.Add("tutAlumno", OracleDbType.Varchar2).Value = tutAlumno;
            cmd.Parameters.Add("tutParent", OracleDbType.Varchar2).Value = tutParent;

            // Acudiente
            cmd.Parameters.Add("nomAcu", OracleDbType.Varchar2).Value = nomAcu;
            cmd.Parameters.Add("apeAcu", OracleDbType.Varchar2).Value = apeAcu;
            cmd.Parameters.Add("cedAcu", OracleDbType.Varchar2).Value = cedAcu;
            cmd.Parameters.Add("lugTrabajoAcu", OracleDbType.Varchar2).Value = lugTrabajoAcu;
            cmd.Parameters.Add("celAcu", OracleDbType.Varchar2).Value = celAcu;
            cmd.Parameters.Add("emAcu", OracleDbType.Varchar2).Value = emAcu;
            cmd.Parameters.Add("nacAcu", OracleDbType.Varchar2).Value = nacAcu;
            cmd.Parameters.Add("exAcu", OracleDbType.Varchar2).Value = exAcu;
            cmd.Parameters.Add("promAcu", OracleDbType.Varchar2).Value = promAcu;
            cmd.Parameters.Add("telOfiAcu", OracleDbType.Varchar2).Value = telOfiAcu;
            cmd.Parameters.Add("profAcu", OracleDbType.Varchar2).Value = profAcu;

            // Papa
            cmd.Parameters.Add("nomPa", OracleDbType.Varchar2).Value = nomPa;
            cmd.Parameters.Add("apePa", OracleDbType.Varchar2).Value = apePa;
            cmd.Parameters.Add("cedPa", OracleDbType.Varchar2).Value = cedPa;
            cmd.Parameters.Add("lugTrabajoPa", OracleDbType.Varchar2).Value = lugTrabajoPa;
            cmd.Parameters.Add("celPa", OracleDbType.Varchar2).Value = celPa;
            cmd.Parameters.Add("emPa", OracleDbType.Varchar2).Value = emPa;
            cmd.Parameters.Add("nacPa", OracleDbType.Varchar2).Value = nacPa;
            cmd.Parameters.Add("exPa", OracleDbType.Varchar2).Value = exPa;
            cmd.Parameters.Add("promPa", OracleDbType.Varchar2).Value = promPa;
            cmd.Parameters.Add("telOfiPa", OracleDbType.Varchar2).Value = telOfiPa;
            cmd.Parameters.Add("profPa", OracleDbType.Varchar2).Value = profPa;

            // Mama
            cmd.Parameters.Add("nomMa", OracleDbType.Varchar2).Value = nomMa;
            cmd.Parameters.Add("apeMa", OracleDbType.Varchar2).Value = apeMa;
            cmd.Parameters.Add("cedMa", OracleDbType.Varchar2).Value = cedMa;
            cmd.Parameters.Add("lugTrabajoMa", OracleDbType.Varchar2).Value = lugTrabajoMa;
            cmd.Parameters.Add("celMa", OracleDbType.Varchar2).Value = celMa;
            cmd.Parameters.Add("emMa", OracleDbType.Varchar2).Value = emMa;
            cmd.Parameters.Add("nacMa", OracleDbType.Varchar2).Value = nacMa;
            cmd.Parameters.Add("exMa", OracleDbType.Varchar2).Value = exMa;
            cmd.Parameters.Add("promMa", OracleDbType.Varchar2).Value = promMa;
            cmd.Parameters.Add("telOfiMa", OracleDbType.Varchar2).Value = telOfiMa;
            cmd.Parameters.Add("profMa", OracleDbType.Varchar2).Value = profMa;

            // Datos de Emergencia
            cmd.Parameters.Add("nomUrg1", OracleDbType.Varchar2).Value = nomUrg1;
            cmd.Parameters.Add("celUrg1", OracleDbType.Varchar2).Value = celUrg1;
            cmd.Parameters.Add("parentUrg1", OracleDbType.Varchar2).Value = parentUrg1;
            cmd.Parameters.Add("nomUrg2", OracleDbType.Varchar2).Value = nomUrg2;
            cmd.Parameters.Add("celUrg2", OracleDbType.Varchar2).Value = celUrg2;
            cmd.Parameters.Add("parentUrg2", OracleDbType.Varchar2).Value = parentUrg2;

            // Historial Clinico
            cmd.Parameters.Add("autorizaUsoMedic", OracleDbType.Varchar2).Value = autorizaUsoMedic;
            cmd.Parameters.Add("medicUsado", OracleDbType.Varchar2).Value = medicUsado;
            cmd.Parameters.Add("alergiaA", OracleDbType.Varchar2).Value = alergiaA;


            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public string get_formulario_admision(int codadmision)
    {
        string res = "";
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ad_fx_imprime_admision (:codadmision) contrato from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("p_admision", OracleDbType.Int32).Value = codadmision;
            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }



    public string get_periodo_admision()
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select to_char(periodo_admision) from centro_educativo";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_fecha_sistema()
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ad_fx_fecha_full from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public string get_fecha_calculo_admision()
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select to_char(fecha_calculo_admision, 'dd/mm/yyyy') from centro_educativo";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public string get_calculo_edad(string fechaNac )
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ad_fx_edad_admision( :fechaNac ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("pd_fecha_nac", OracleDbType.Varchar2).Value = fechaNac;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_nivel(string noGradoAno)
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select to_char(no_nivel) from grado_ano where no_grado_ano = :noGradoAno";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("no_grado_ano", OracleDbType.Varchar2).Value = noGradoAno;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public string get_des_pub_mail(int codpub)
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select pub_destinatarios(:codpub) destinatarios from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codpub", OracleDbType.Int32).Value = codpub;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public bool seg_ret_usr_acu(int codusr)
    {
        bool res = false;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select seg_ret_usr_acu(:codusr) acu from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codusr", OracleDbType.Int32).Value = codusr;

            try
            {
                res = ((Convert.ToInt32(cmd.ExecuteScalar()) > 0) ? true : false);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_enc_pwd(string pwd)
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ac_fx_encripta(:pwd) pwd_desencriptado from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("pwd", OracleDbType.Varchar2).Value = pwd;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_des_pwd(string pwd)
    {
        string res = "";

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ac_fx_desencripta(:pwd) pwd_desencriptado from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("pwd", OracleDbType.Varchar2).Value = pwd;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }


    public string get_tabla_detalle(int codalu, int codlen)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select AC_FX_BOLETIN_TEXTO ( :codalu, :codlen, 0 ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Varchar2).Value = codalu.ToString();
            cmd.Parameters.Add("codlen", OracleDbType.Varchar2).Value = codlen.ToString();

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_trimestre_boletin(int codalu, int codlen)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select AC_FX_BOLETIN_PERIODO ( :codalu, :codlen, 0 ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Varchar2).Value = codalu.ToString();
            cmd.Parameters.Add("codlen", OracleDbType.Varchar2).Value = codlen.ToString();

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_trimestre()
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select to_char(nvl(max(no_bimestre),0)) no_bimestre from ac_bimestre where sysdate between fecha_inicio and fecha_fin";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_tabla_detalle_ingles(int codalu, int codlen)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select AC_FX_BOLETIN_TEXTO2 ( :codalu, :codlen, 0 ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Varchar2).Value = codalu.ToString();
            cmd.Parameters.Add("codlen", OracleDbType.Varchar2).Value = codlen.ToString();

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_boletin_abreviatura (int codalu)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select AC_FX_BOLETIN_TEXTO3 ( :codalu, 0 ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Varchar2).Value = codalu.ToString();

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_observaciones(int codalu, int codlen, int codtri)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select AC_FX_BOLETIN_OBSERVACIONES ( :codalu, :codlen, :codtri, 0 ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Varchar2).Value = codalu.ToString();
            cmd.Parameters.Add("codlen", OracleDbType.Varchar2).Value = codlen.ToString();
            cmd.Parameters.Add("codtri", OracleDbType.Varchar2).Value = codtri.ToString();

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public string get_cambio_password(int codusr, string ip, string old_pass, string new_pass)
    {
        string res;

        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select SEG_FX_CAMBIO_PASSWORD ( :codusr, :ip, :old_pass, :new_pass ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codusr", OracleDbType.Varchar2).Value = codusr.ToString();
            cmd.Parameters.Add("ip", OracleDbType.Varchar2).Value = ip;
            cmd.Parameters.Add("old_pass", OracleDbType.Varchar2).Value = old_pass;
            cmd.Parameters.Add("new_pass", OracleDbType.Varchar2).Value = new_pass;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    public void EnviarUnCorreo(string CorreoDestino, string Asunto, string CuerpoEmail)
    {
        string error = "";
        MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();
        try
        {
            m.From = new MailAddress("colegiojavier@javier.edu");
            m.To.Add(CorreoDestino);
            m.Subject = Asunto;
            m.IsBodyHtml = true;
            m.Body = CuerpoEmail;
            sc.Host = "javier.ip-zone.com";
            sc.Port = 25;
            sc.Credentials = new System.Net.NetworkCredential("javier", "panama1491");

            sc.EnableSsl = false;
            sc.Send(m);
            error = "Email Send successfully";
        }
        catch (Exception ex)
        {
            error = ex.Message;
        }
    }
    public void EnviarVariosCorreo(string CorreoDestino, string Asunto, string CuerpoEmail)
    {
        string error = "";
        MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();
        try
        {
            m.From = new MailAddress("colegiojavier@javier.edu");
            m.To.Add(CorreoDestino);
            m.Subject = Asunto;
            m.IsBodyHtml = true;
            m.Body = CuerpoEmail;
            m.Attachments.Add(new Attachment(@"C:\devtroce.com.html"));
            sc.Host = "javier.ip-zone.com";
            sc.Port = 25;
            sc.Credentials = new System.Net.NetworkCredential("javier", "panama1491");

            sc.EnableSsl = false;
            sc.Send(m);
            error = "Email Send successfully";
        }
        catch (Exception ex)
        {
            error = ex.Message;
        }
    }
    public string get_email_acu( int codalu, string tipo )
    {
        string res = "";
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ac_fx_msj_email_acu ( :codalu, :tipo ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Int32).Value = codalu;
            cmd.Parameters.Add("tipo", OracleDbType.Varchar2).Value = tipo;
  
            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }
    public string get_email_texto_acu(int codalu, int codmen, string tipo)
    {
        string res = "";
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["JavierConnectionString"].ConnectionString))
        {
            con.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "select ac_fx_msj_email_texto_acu ( :codalu, :codmen, :tipo ) from dual";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("codalu", OracleDbType.Int32).Value = codalu;
            cmd.Parameters.Add("codmen", OracleDbType.Int32).Value = codmen;
            cmd.Parameters.Add("tipo", OracleDbType.Varchar2).Value = tipo;

            try
            {
                res = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            con.Close();
        }

        return res;
    }

    // A un hiperlink agrega el target=_blank para que la pagina se abra en una nueva ventana
    public string addHiperlink(string strText)
    {
        string pattern = "href=\"";
        string repl = "target=\"_blank\" href=\"";
        strText = strText.Replace(pattern, repl);
        return strText;
    }
}