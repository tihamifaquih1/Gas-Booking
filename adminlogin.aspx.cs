using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GasBooking
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadminlogin_Click(object sender, EventArgs e)
        {
            con.Open();
            string user = txtusername.Text;
            string pass = txtpassword.Text;
            SqlCommand cmd = new SqlCommand("select admin_id,password from Admin where admin_id=@user and password=@pass", con);
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                con.Close();
                Session["adminsessionid"] = txtusername.Text;
                Response.Redirect("Adminpanel.aspx");
            }
            else
            {
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username number and Password')</script>");

            }
        }
    }
}