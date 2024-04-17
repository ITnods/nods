using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

public partial class admisionImprimir : System.Web.UI.Page
{
    MultiClass mc = new MultiClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        llenadodecampos();
    }
    private void llenadodecampos()
    {
        int codadmision;

        if (Request.Params["codigo"] != null)
        {
            cod.Text = Request.Params["codigo"];

            codadmision = Convert.ToInt32(Request.Params["codigo"]);
            lbl_contrato1.Text = mc.get_formulario_admision(codadmision);
            if ("#".Equals(lbl_contrato1.Text.Substring(0, 1)))
            {
                lbl_contrato1.Text = lbl_contrato1.Text.Substring(1);
            }
            else
            {
                Imprimir.Visible = true;
            }
        }
    }
}
