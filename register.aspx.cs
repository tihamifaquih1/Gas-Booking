using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GasBooking
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string selectValuegender = this.radiogender.SelectedValue;
            SqlCommand cmd = new SqlCommand("insert into Customers values(@aadhaar_no,@first_name,@middle_name,@last_name,@gender,@address,@city,@state,@password,@phone_no)", con);
            cmd.Parameters.AddWithValue("@aadhaar_no", txtaadhaar.Text);
            cmd.Parameters.AddWithValue("@first_name", txtfname.Text);
            cmd.Parameters.AddWithValue("@middle_name", txtmname.Text);
            cmd.Parameters.AddWithValue("@last_name", txtlname.Text);
            cmd.Parameters.AddWithValue("@phone_no", txtmobile.Text);
            cmd.Parameters.AddWithValue("@gender", selectValuegender);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@state", dropstates.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
}