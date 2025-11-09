
using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;

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


 