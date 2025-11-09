
using System;

namespace PortfolioHarica
{

    public partial class Contact : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)

        {

            //redirect to login page if unsuccessful authentication

            if (Session["Email"] == null)

            {

                Response.Redirect("Login.aspx");

            }

        }

    }

}


