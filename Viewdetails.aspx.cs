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
    public partial class Viewdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sessionid"] != null)
            {
                txtaadhaar.Text = Session["sessionid"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            if (Session["successmsg"] != null)
            {
                Label1.Text = Session["successmsg"].ToString();
                Label1.Visible = true;
                Session.Remove("successmsg");
            }
            

            btnsave.Visible = false;
            btncancel.Visible = false;

            if (!IsPostBack)
            {
                con.Open();
                string aadhaar = txtaadhaar.Text;
                SqlCommand cmd = new SqlCommand("select first_name,middle_name,last_name,address,city,state,phone_no from Customers where aadhaar_no=@aadhaar", con);
                cmd.Parameters.AddWithValue("@aadhaar", aadhaar);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                txtfname.Text = reader["first_name"].ToString();
                txtmname.Text = reader["middle_name"].ToString();
                txtlname.Text = reader["last_name"].ToString();
                txtaddress.Text = reader["address"].ToString();
                txtcity.Text = reader["city"].ToString();
                txtstate.Text = reader["state"].ToString();
                txtmobile.Text = reader["phone_no"].ToString();
                reader.Close();
                con.Close();
            }  
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            txtfname.Enabled = true;
            txtmname.Enabled = true;
            txtlname.Enabled = true;
            txtaddress.Enabled = true;
            txtcity.Enabled = true;
            txtstate.Enabled = true;
            txtmobile.Enabled = true;
            btnsave.Visible = true;
            btncancel.Visible = true;
            btnedit.Visible = false;
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewdetails.aspx");
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmdupdate = new SqlCommand("UPDATE Customers SET first_name=@fname, middle_name=@mname, last_name=@lname,address=@address,city=@city,state=@state,phone_no=@mobile WHERE aadhaar_no=@aadhaar", con);
            cmdupdate.Parameters.AddWithValue("@aadhaar", txtaadhaar.Text);
            cmdupdate.Parameters.AddWithValue("@fname", txtfname.Text);
            cmdupdate.Parameters.AddWithValue("@mname", txtmname.Text);
            cmdupdate.Parameters.AddWithValue("@lname", txtlname.Text);
            cmdupdate.Parameters.AddWithValue("@address", txtaddress.Text);
            cmdupdate.Parameters.AddWithValue("@city", txtcity.Text);
            cmdupdate.Parameters.AddWithValue("@state", txtstate.Text);
            cmdupdate.Parameters.AddWithValue("@mobile", txtmobile.Text);

            cmdupdate.ExecuteNonQuery();
            con.Close();
            Session["successmsg"] = "Updated successfully";
            Response.Redirect("Viewdetails.aspx");
           

        }
    }
}