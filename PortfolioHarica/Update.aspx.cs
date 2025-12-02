using PortfolioHarica;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioHarica
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Login2.aspx");
            }
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //create the connection
            SqlConnection conn = new SqlConnection(dsUpdate.ConnectionString);

            //create the command
            SqlCommand cmd = new SqlCommand(dsUpdate.UpdateCommand, conn);

            //populate parameters
            cmd.Parameters.AddWithValue("@User_Email", lblEmail.Text.Trim());

            if (txtPswd.Text.Trim() == string.Empty)
            {
                //we use the old password
                cmd.Parameters.AddWithValue("@User_Pass", lblPass.Text.Trim());

            }
            else
            {
                //we hash the value in confirm textbox
                cmd.Parameters.AddWithValue("@User_Pass", ComputeSha256Hash(txtPswd.Text.Trim()));

            }

            cmd.Parameters.AddWithValue("@User_Fname", txtFname.Text.Trim());
            cmd.Parameters.AddWithValue("@User_Lname", txtLname.Text.Trim());
            cmd.Parameters.AddWithValue("@User_YOB", Convert.ToInt32(txtYob.Text.Trim()));

            //perform the update
            try
            {
                dsUpdate.Update();
                conn.Open();
                cmd.ExecuteNonQuery();
                lblError.Text = "Update Successful";
                LoadUserData();
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

        private void LoadUserData()
        {
            //create the connection
            SqlConnection conn = new SqlConnection(dsUpdate.ConnectionString);

            //create the command
            SqlCommand cmd = new SqlCommand(dsUpdate.SelectCommand, conn);
            cmd.Parameters.AddWithValue("@User_Email", Session["Email"].ToString());

            //proccess the read
            try
            {
                //open the connection
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    //populate controls
                    lblEmail.Text = reader[0].ToString();
                    lblPass.Text = reader[1].ToString();
                    txtFname.Text = reader[2].ToString();
                    txtLname.Text = reader[3].ToString();
                    txtYob.Text = reader[4].ToString();

                }
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
    }
}