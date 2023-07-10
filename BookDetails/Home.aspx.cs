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
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string web = ConfigurationManager.ConnectionStrings["BookInfoEntities"].ConnectionString;
            con = new SqlConnection(web);
            BindData();

        }
        protected void btn_Search(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("BOOKS_SEARCHES", con);
            cmd.Parameters.Add("@Book_Name", SqlDbType.VarChar).Value = Sbname.Value;
            cmd.Parameters.Add("@Author", SqlDbType.VarChar).Value = Sauthor.Value;
            int s7 = 0;
            int s8 = 0;
            if (Sshelf.Value != "")
            {
                s7 = Convert.ToInt32(Sshelf.Value.ToString());
            }
          
            cmd.Parameters.Add("@SheldId", SqlDbType.Int).Value = s7;
            if (Srack.Value != "")
            {
                s8 = Convert.ToInt32(Srack.Value.ToString());
            }
            cmd.Parameters.Add("@Rack", SqlDbType.Int).Value = s8;

            //cmd.Parameters.Add(new SqlParameter("@price", SqlDbType.Int)).Value = Convert.ToInt32(Srack.Value);
            DataSet ds = new DataSet();
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {

                sda.Fill(ds);
                con.Close();
                grdsearch.DataSource = ds.Tables[0];
                grdsearch.DataBind();
            }

            con.Close();
        }
        protected void grvBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Sp_GridDelete", con);
                Label id = (Label)grdsearch.Rows[e.RowIndex].FindControl("lblCode");

                cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(id.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                int result = Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
                if (result > 0)
                {

                    ShowAlertMessage("Record Is Deleted Successfully");
                    this.BindData();
                }
                else
                {
                    ShowAlertMessage("Failed");
                  
                    BindData();
                    
                }
            }
            catch (Exception ex)
            {
               
            }
            
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

        public void BindData()
        {
            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("GetBooks"))
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    con.Open();
                    sda.Fill(ds);
                    con.Close();
                    grdsearch.DataSource = ds.Tables[0];
                    grdsearch.DataBind();
                }
            }
            con.Close();
        }
    }
}