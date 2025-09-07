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
    public partial class Booknow : System.Web.UI.Page
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

            DateTime today = DateTime.Now;
            lbldate.Text = today.ToString("dd-MM-yyyy");
            string year = today.Year.ToString();
            lblyear.Text = year;

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

            
            //count subsidy
            SqlCommand cmdsubsidy = new SqlCommand("SELECT COUNT(*) FROM booking WHERE aadhaar_no=@aadhaar AND booking_status IN ('booked', 'delivered') AND cylinder_type='14.2 Kg (Subsidised)' AND year=@year", con);
            cmdsubsidy.Parameters.AddWithValue("@aadhaar", aadhaar);
            cmdsubsidy.Parameters.AddWithValue("@year", year);
            string subsidy = cmdsubsidy.ExecuteScalar().ToString();
            lblsubsidy.Text = subsidy;
            int subsidycount = Convert.ToInt32(lblsubsidy.Text);
            if (subsidycount >= 12)
            {
                radiokg.Items[0].Enabled = false;
            }

            //to check bookings present or not

            SqlCommand cmdcount = new SqlCommand("SELECT COUNT(*) FROM booking WHERE aadhaar_no=@aadhaar AND booking_status IN ('booked', 'delivered')", con);
            cmdcount.Parameters.AddWithValue("@aadhaar", aadhaar);
            
            string count = cmdcount.ExecuteScalar().ToString();
            int countno = Convert.ToInt32(count);

            if(countno>0)
            {
                //query foor latest date//
                SqlCommand cmddate = new SqlCommand("SELECT MAX(booking_date) AS bdate FROM booking WHERE  aadhaar_no=@aadhaar AND booking_status IN ('booked', 'delivered')", con);
                cmddate.Parameters.AddWithValue("@aadhaar", aadhaar);

                SqlDataReader readerdate = cmddate.ExecuteReader();
                readerdate.Read();

                DateTime dt = (DateTime)readerdate["bdate"];
                readerdate.Close();

                //calculating days
                TimeSpan t = today - dt;
                var days = t.Days;
                
                
                if (days <= 21)
                {
                    booking_alert.Visible = true;
                    var remainingd = 21 - days;
                    lbldays.Text = remainingd.ToString();
                    btnbook.Enabled = false;
                }
                else
                {
                    btnbook.Enabled = true;
                }
            }

            con.Close();



        }
        

        protected void btnbook_Click(object sender, EventArgs e)
        {
            con.Open();
            string booking_status = "booked";
            
            string cylinder_type = this.radiokg.SelectedValue;
            string delivery_mode = this.radiomode.SelectedValue; 
            SqlCommand cmdinsert = new SqlCommand("insert into booking values(@aadhaar_no,@first_name,@middle_name,@last_name,@address,@city,@state,@phone_no,@cylinder_type,@collection_mode,@price,@booking_date,@year,@booking_status,NULL,NULL)", con);
            cmdinsert.Parameters.AddWithValue("@aadhaar_no", txtaadhaar.Text);
            cmdinsert.Parameters.AddWithValue("@first_name", txtfname.Text);
            cmdinsert.Parameters.AddWithValue("@middle_name", txtmname.Text);
            cmdinsert.Parameters.AddWithValue("@last_name", txtlname.Text);
            cmdinsert.Parameters.AddWithValue("@address", txtaddress.Text);
            cmdinsert.Parameters.AddWithValue("@city", txtcity.Text);
            cmdinsert.Parameters.AddWithValue("@state", txtstate.Text);
            cmdinsert.Parameters.AddWithValue("@phone_no", txtmobile.Text);
            cmdinsert.Parameters.AddWithValue("@cylinder_type", cylinder_type);
            cmdinsert.Parameters.AddWithValue("@collection_mode", delivery_mode);
            cmdinsert.Parameters.AddWithValue("@price", txtprice.Text);
            cmdinsert.Parameters.AddWithValue("@booking_date",DateTime.Now);
            cmdinsert.Parameters.AddWithValue("@year", lblyear.Text);
            cmdinsert.Parameters.AddWithValue("@booking_status", booking_status);
           
            cmdinsert.ExecuteNonQuery();
            con.Close();
            Session["successbooking"] = "Booking Done Successfully";
            Response.Redirect("Default.aspx");
            

        }

        public void calcprice()
        {
            if (radiokg.SelectedIndex == 0)
            {   
                if (radiomode.SelectedIndex == 0)
                {
                    txtprice.Text = "490.66";
                }
                else
                {
                    txtprice.Text = "470.66";
                }
                
            }
            else if (radiokg.SelectedIndex == 1)
            {
                if (radiomode.SelectedIndex == 0)
                {
                    txtprice.Text = "764.50";
                }
                else
                {
                    txtprice.Text = "744.50";
                }
            }
            else
            {
                if (radiomode.SelectedIndex == 0)
                {
                    txtprice.Text = "1383.00";
                }
                else
                {
                    txtprice.Text = "1363.00";
                }

                
            }
        }
        protected void radiokg_SelectedIndexChanged(object sender, EventArgs e)
        {

            calcprice();
        }

        protected void radiomode_SelectedIndexChanged(object sender, EventArgs e)
        {
            calcprice();

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
}