using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UFCD_9951_TrabalhoModelo_2021_22_WIP.Alunos
{
    public partial class adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload foto = FormView1.FindControl("FileUpload1") as FileUpload;
            if (foto.HasFile)
                e.Values["fotografia"] = foto.FileBytes;
        }
    }
}