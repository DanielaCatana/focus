using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;

namespace ClinicaFocus
{
    public partial class Inregistrare : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DARKMODE"] != null)
            {
                body.Attributes["data-bs-theme"] = "dark";
            }
            else
            {
                body.Attributes["data-bs-theme"] = "light";
            }
        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if(username.Text != "" & password.Text != "" & confirmPassword.Text != "" & email.Text != "" & name.Text != "")
            {
                if(password.Text == confirmPassword.Text)
                {
                    if(password.Text.Length > 5)
                    {
                        String cs = ConfigurationManager.ConnectionStrings["ClinicaFocusConnectionString"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(cs))
                        {
                            SqlCommand cmd = new SqlCommand("insert into [User] values ('" + username.Text + "','" + password.Text + "','" + email.Text + "','" + name.Text + "')", con);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            validationMessage.ForeColor = Color.Green;
                            validationMessage.Text = "Inregistrare cu success!";
                            username.Text = "";
                            email.Text = "";
                            name.Text = "";
                            Response.Redirect("~/Login.aspx");
                        }
                    }
                    else
                    {
                        validationMessage.ForeColor = Color.Red;
                        validationMessage.Text = "Parola introdusa trebuie sa contina minim 6 caractere";
                    }
                }
                else
                {
                    validationMessage.ForeColor = Color.Red;
                    validationMessage.Text = "Parola introdusa in cel de-al doilea camp nu conincide cu cea initiala";
                }
            }
            else
            {
                validationMessage.ForeColor = Color.Red;
                validationMessage.Text = "Toate campurile trebuie completate";
            }
            
        }
    }
}