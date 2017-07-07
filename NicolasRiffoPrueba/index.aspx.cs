using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NicolasRiffoPrueba.Modelo;
using System.IO;


namespace NicolasRiffoPrueba
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataModel ob = new DataModel();
                GV1.DataSource = ob.listadoEncuesta();
                GV1.DataBind();
            }
        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;

        }
        protected void btn3_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 2;
            if (!IsPostBack)
            {
                DataModel ob = new DataModel();
                GV1.DataSource = ob.listadoEncuesta();
                GV1.DataBind();
            }
        }
        protected void btn4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }


        protected void enviar_Click(object sender, EventArgs e)
        {

            Panel3.CssClass = "alert alert-success";
            Panel3.Visible = true;
        }

        protected void btnRespuestas_Click(object sender, EventArgs e)
        {

            Panel4.CssClass = "alert alert-success";
            Label3.Text = "La Cantidad es: 1";
            Panel4.Visible = true;
        }

        protected void GV1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int fila = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Seleccionar")
            {
                Panel5.CssClass = "alert alert-success";
                Label2.Text = GV1.Rows[fila].Cells[0].Text;
                Panel5.Visible = true;
            }

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}