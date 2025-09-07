using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GasBooking
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sessionid"]!=null)
            {
                lblaadhaar.Text = Session["sessionid"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            if (Session["successbooking"] != null)
            {
                lblsuccessbook.Text = Session["successbooking"].ToString();
                lblsuccessbook.Visible = true;
                Session.Remove("successbooking");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
}