using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trash_To_Treasure
{
    public partial class Form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void button_click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "insert into Customer1"+ "(name,phone,email,city,add_type,address,trash_type,trash_info) values (@name,@phone,@email,@city,@add_type,@address,@trash_type,@trash_info );";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@city", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@add_type", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@trash_type", TextBox5.Text);
            cmd.Parameters.AddWithValue("@trash_info", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Form Submitted";

            con.Close();

        }
    }
}