using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace FinalYearProject
{
    public partial class busadd : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string busid , busname, connectionstring, sqlquery ;
            busid = TextBox1.Text;
            busname = TextBox2.Text;

            connectionstring = @"Data Source=YATHARTHA\ynspc;Initial Catalog=finalyearproject;User ID=sa;Password=256288";
            sqlquery = "insert into bus values ('"+busid+"' ,'"+busname+"')";

            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand(sqlquery, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
            }
            catch
            {
            }



        }
    }
}