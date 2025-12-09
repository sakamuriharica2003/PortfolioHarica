using PortfolioHarica;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioHarica
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //redirect to login page if unsuccessful authentication
            if (Session["Email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Session["Email"].ToString().Trim() == TextBox1.Text.Trim().ToUpper())
            {
                //create the connection
                SqlConnection conn = new SqlConnection(dsDelete.ConnectionString);

                //create the command
                SqlCommand cmd = new SqlCommand(dsDelete.DeleteCommand, conn);

                //populate parameters
                cmd.Parameters.AddWithValue("@User_Email", TextBox1.Text.Trim());

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("DeleteSuccess.aspx");
                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                    {
                        conn.Close();
                    }
                }
            }
            else
            {
                lblError.Text = "You may only delete the signed in account.";
            }

        }
    }
}