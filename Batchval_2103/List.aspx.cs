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
    public partial class List : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source= DESKTOP-UL5MS2R\\SQLEXPRESS;initial catalog=dbtest;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        public void Display()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from users", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            grd.DataSource = dt;
            grd.DataBind();

        }

        protected void btnRecover_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationForm.aspx");
        }
    }
}