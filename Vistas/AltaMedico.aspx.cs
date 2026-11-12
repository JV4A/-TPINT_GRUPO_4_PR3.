using System;
using System.Collections.Generic;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_INTEGRADOR_GRUPO_4
{
    public partial class AltaMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            lblMensaje.Text = "Se guardo correctamente los datos del medico";
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblLegajoAsignado.Text = "El legajo del medico..."/* aca ponemos el nombre*/ + " es el N°..."/*  el legajo  */;
            /* podemos poner un gridview con los datos del nuevo medico o varios labels */
        }
    }
}