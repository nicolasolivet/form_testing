using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using domain;

namespace web_form
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //postback es cuando envia y devuelve data por segunda, tercera, cuarta vez etc
                ddlColor.Items.Add("Rojo");
                ddlColor.Items.Add("Negro");
                ddlColor.Items.Add("Violeta");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDesc.Text;
            a.Color = ddlColor.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Nuevo = chBox.Checked;

            if (rbNac.Checked)
                a.Nacional = true;
            else 
                a.Nacional = false;

            //esto se debe enviar a la DDBB llamando a algpun método...
            //pero de momento lo mandamos a session que es como un localstorage

            //agregamos a la session la lista
            //((List<Auto>)Session["listaAutos"]).Add(a);

            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a);

            //al darle
            //click vamo a default y vemos la nueva lista
            Response.Redirect("Default.aspx");
        }

        protected void rbNac_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
