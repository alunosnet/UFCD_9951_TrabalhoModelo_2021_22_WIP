using System;
using System.Data;
using System.Web.UI.WebControls;

namespace UFCD_9951_TrabalhoModelo_2021_22_WIP.Alunos
{
    public partial class gerir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //executada para cada linha da tabela
            if (e.Row.RowType==DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                if(dr["fotografia"] is DBNull == false)
                {
                    string imagem = "data:image/jpg;base64, " +
                        Convert.ToBase64String((byte[])dr["fotografia"]);
                    (e.Row.FindControl("fotografia") as Image).ImageUrl = imagem;
                }
            }
        }
    }
}