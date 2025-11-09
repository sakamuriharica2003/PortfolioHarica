
using System;
using System.Collections.Generic;
//data class libraries

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
//cryptography libraries

using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioHarica

{

    public partial class Login2 : System.Web.UI.Page

    {

        private string ComputeSha256Hash(string rawData)

        {

            using (SHA256 sha256Hash = SHA256.Create())

            {

                //create the hash & store it in byte array

                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

                StringBuilder builder = new StringBuilder();

                //build hex string

                foreach (byte b in bytes)

                {

                    //taking each byte, converting to hex, appending it to string

                    builder.Append(b.ToString("x2"));

                }

                //return hash

                return builder.ToString();

            }

        }


        protected void Page_Load(object sender, EventArgs e)

        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)

        {

            //create variables

            string strEmail = txtEmail.Text.ToUpper().Trim();

            string strHashPass = ComputeSha256Hash(txtPswd.Text.Trim());

            string strRetEmail = string.Empty;

            string strRetPass = string.Empty;

            //create connection & give connection to string

            SqlConnection conn = new SqlConnection(dsLogin.ConnectionString);

            try

            {

                //create a command & set its commandtext and connection properties

                SqlCommand cmd = new SqlCommand(dsLogin.SelectCommand, conn);

                //populate the parameters in the commandtext with values

                cmd.Parameters.AddWithValue("@User_Email", strEmail);

                cmd.Parameters.AddWithValue("@User_Pass", strHashPass);

                //open the connection

                conn.Open();

                //execute the select command & fill the data reader

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())

                {

                    //populate the email variable

                    strRetEmail = reader.GetString(0).Trim();

                    strRetPass = reader.GetString(1).Trim();

                }

                //checks the credentials against the db values

                if (strRetEmail == strEmail && strRetPass == strHashPass)

                {

                    //if they match

                    Session["Email"] = strEmail;

                    Response.Redirect("LoginSuccess.aspx");

                }

                else

                {

                    lblError.Text = "Invalid username and password.";

                }

            }

            //catch errors

            catch (Exception ex)

            {

                lblError.Text += ex.Message;

            }

            finally

            {

                if (conn.State == System.Data.ConnectionState.Open)

                {

                    conn.Close();

                }

            }


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)

        {

        }

    }

}
