using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicaFocus
{
    public partial class Contact : Page
    {
        // o functie care se apeleaza cand se incarca pagina 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                loginNavItem.Visible = false;
                logoutNavItem.Visible = true;
                signUpNavItem.Visible = false;
            }
            else
            {
                loginNavItem.Visible = true;
                logoutNavItem.Visible = false;
                signUpNavItem.Visible = true;
            }

            if (Session["DARKMODE"] != null)
            {
                body.Attributes["data-bs-theme"] = "dark";
            }
            else
            {
                body.Attributes["data-bs-theme"] = "light";
            }
        }

        protected void btnDarkMode_Click(object sender, EventArgs e)
        {
            if (body.Attributes["data-bs-theme"] == "dark")
            {
                body.Attributes["data-bs-theme"] = "light";
                Session["DARKMODE"] = null;
            }
            else
            {
                body.Attributes["data-bs-theme"] = "dark";
                Session["DARKMODE"] = "true";
            }
        }
    }
}