using System;
using System.Collections.Generic;
using System.Linq;
//cryptography libraries
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//data class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace PortfolioHarica
{
    public partial class Registration : System.Web.UI.Page
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create and set connection properties
            SqlConnection conn = new SqlConnection(dsReg.ConnectionString);

            //create and set command properties
            SqlCommand cmd = new SqlCommand(dsReg.InsertCommand, conn);
            //checks for all the upper case emails
            cmd.Parameters.AddWithValue("@User_Email", txtCEmail.Text.ToUpper().Trim());
            //sent the password to the hasing function store as a hash value
            cmd.Parameters.AddWithValue("@User_Pass", ComputeSha256Hash(txtCPswd.Text.Trim()));
            cmd.Parameters.AddWithValue("@User_FName", txtFname.Text.Trim());
            cmd.Parameters.AddWithValue("@User_LName", txtLname.Text.Trim());
            //converts Yob from string to integer to match the data type in database
            cmd.Parameters.AddWithValue("@User_Yob", Convert.ToInt64(txtYob.Text.Trim()));

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("AccountSuccess.aspx");

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
    }
}