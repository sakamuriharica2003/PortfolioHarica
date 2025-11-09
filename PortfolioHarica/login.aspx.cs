using System;

namespace PortfolioHarica
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Hardcoded the credentials for login authentication
            string strEmail = "scrappy@unt.edu";
            string strPswd = "P@ss1";

            // Checks the user input against the given hardcoded credentials
            if (txtEmail.Text.Trim() == strEmail && txtPswd.Text.Trim() == strPswd)
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                // Displays the error message when invalid credentials are given
                lblError.Text = "Incorrect username and password.";
            }
        }
    }
}