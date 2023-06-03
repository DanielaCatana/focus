using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicaFocus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["USERNAME_ID"] = null;
            Session["USERNAME_NAME"] = null;
            Session["USERNAME_EMAIL"] = null;

            if (Session["DARKMODE"] != null)
            {
                body.Attributes["data-bs-theme"] = "dark";
            }
            else
            {
                body.Attributes["data-bs-theme"] = "light";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (username.Text != "" & password.Text != "")
            {
                String cs = ConfigurationManager.ConnectionStrings["ClinicaFocusConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("select * from [User] where Username='" + username.Text + "' and Password='" + password.Text + "'", con);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        var dr = dt.AsEnumerable().FirstOrDefault(); // ia prima inregistrare din rezultate

                        Session["USERNAME"] = username.Text; // salvam username-ul in session ca sa avem access la el de oriunde din aplicatie
                        Session["USERNAME_ID"] = dr["Id"];
                        Session["USERNAME_NAME"] = dr["Name"];
                        Session["USERNAME_EMAIL"] = dr["Email"];
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        validationMessage.ForeColor = Color.Red;
                        validationMessage.Text = "Username sau parola incorecta!";
                    }
                }
            }
        }

        //protected void btnDarkMode_Click(object sender, EventArgs e)
        //{
        //    if (body.Attributes["data-bs-theme"] == "dark")
        //    {
        //        body.Attributes["data-bs-theme"] = "light";
        //        Session["DARKMODE"] = null;
        //    }
        //    else
        //    {
        //        body.Attributes["data-bs-theme"] = "dark";
        //        Session["DARKMODE"] = "true";
        //    }
        //}
    }
}