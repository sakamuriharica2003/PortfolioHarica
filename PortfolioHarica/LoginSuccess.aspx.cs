using System;

namespace PortfolioHarica
{
    public partial class LoginSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // validates if user session exists
            if (Session["Email"] == null)
            {
                //If doesn’t exist, redirects to login page
                Response.Redirect("Login.aspx");
            }
        }
    }
}