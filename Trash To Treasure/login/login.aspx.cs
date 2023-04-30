using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trash_To_Treasure.login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                string userid = txt_password.Text;
                string pass = txt_password.Text;

                con.Open();
                string query = "select Name from login where Name= '"+userid+"' and Password='"+pass+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader srd = cmd.ExecuteReader();
                if (srd.Read())
                {
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    lblerror.Text = "Wrong User id and password";
                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Index.aspx");
        }



    }
}