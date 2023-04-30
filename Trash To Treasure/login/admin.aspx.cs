using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trash_To_Treasure.login
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string TableBind()
        {
            string data = "";

            string sql = "select * from Customer1";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Connection.Open();
            using (SqlDataReader reader = cmd.ExecuteReader())
            {

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int id = reader.GetInt32(0);
                        string name = reader.GetString(1);
                        string phone = reader.GetString(2);
                        string email = reader.GetString(3);
                        string city = reader.GetString(4);
                        string add_type=reader.GetString(5);
                        string address = reader.GetString(6);
                        string trash_type = reader.GetString(7);
                        string trash_info=reader.GetString(8);

                        data += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + phone + "</td><td>" + email + "</td><td>" + city + "</td><td>" + add_type + "</td><td>" + address + "</td><td>"+trash_type+ "</td><td>"+trash_info+ "</td></tr>";
                    }

                }

            }

            return data;

        }


    }


}