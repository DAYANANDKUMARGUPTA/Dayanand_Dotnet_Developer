using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Batchval_2103
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source= DESKTOP-UL5MS2R\\SQLEXPRESS;initial catalog=dbtest;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into users(firstname,lastnamme,Rollnumber,Classname,percentage) values('" + txtfirstname.Text + "','" + txtlastnamme.Text + "','" + txtRollnumber.Text + "','" + txtClassname.Text + "','"+ txtpercentage.Text+ "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("List.aspx");
        }
    }
}