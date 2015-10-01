using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalYearProject
{
    public partial class gpsadd : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string gpsid, imei, connectionstring, sqlquery;
            gpsid = TextBox1.Text;
            imei = TextBox2.Text;

            connectionstring = @"Data Source=YATHARTHA\ynspc;Initial Catalog=finalyearproject;User ID=sa;Password=256288";
            sqlquery = "insert into gpsdetail values ('" + gpsid + "' ,'" + imei + "')";

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