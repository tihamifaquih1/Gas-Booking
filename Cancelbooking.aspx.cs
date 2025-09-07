using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GasBooking
{
    public partial class Cancelbooking : System.Web.UI.Page
    {
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
            txtcanceldate.Text = today.ToString();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
}