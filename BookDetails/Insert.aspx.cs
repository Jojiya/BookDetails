using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BookDetails
{
    public partial class Insert : System.Web.UI.Page
    {
               
        //string conn;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string web = ConfigurationManager.ConnectionStrings["BookInfoEntities"].ConnectionString;
             con = new SqlConnection(web);
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookInfoEntities"].ToString());

        }


        protected void Book_Save(object sender, EventArgs e)
        {
          //  SqlConnection con = new SqlConnection(conn);
            SqlCommand  cmd = new SqlCommand("Bookentrys", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Book_name", Bname.Value);
            cmd.Parameters.AddWithValue("Author",AutName.Value);
            cmd.Parameters.AddWithValue("Des", Desc.Value);
            cmd.Parameters.AddWithValue("SheldId", Shelf.Value);
            cmd.Parameters.AddWithValue("Price", Price.Value);
            cmd.Parameters.AddWithValue("Available", Avail.Value);
            cmd.Parameters.AddWithValue("Rack", Rack.Value);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                ShowAlertMessage("Record Is Inserted Successfully");
                //  lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                Bname.Value = "";
                AutName.Value = "";
                Desc.Value = "";
                Shelf.Value = "";
                Price.Value = "";
                Avail.Value = "";
                Rack.Value = "";
            }
            con.Close();
        }
        private static void ShowAlertMessage(string error)
        {
            System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }
    }
}