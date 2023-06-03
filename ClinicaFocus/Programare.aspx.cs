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
    public partial class Programare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                loginNavItem.Visible = false;
                logoutNavItem.Visible = true;
                signUpNavItem.Visible = false;

                deconnected.Visible = false;
                connected.Visible = true;

                getProgramari(); //incarcam programarile in tabel cand se incarca pagina
            }
            else
            {
                loginNavItem.Visible = true;
                logoutNavItem.Visible = false;
                signUpNavItem.Visible = true;

                deconnected.Visible = true;
                connected.Visible = false;
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

        protected void btnAdaugaProgramare_Click(object sender, EventArgs e)
        {
            int usernameId = Int32.Parse(Session["USERNAME_ID"].ToString());
            string name = Session["USERNAME_NAME"].ToString();
            string email = Session["USERNAME_EMAIL"].ToString();
            if (telefon.Text != "" & specialitate.SelectedValue != "-1" & calendar.SelectedDate != null & ora.SelectedValue != "-1")
            {
                String cs = ConfigurationManager.ConnectionStrings["ClinicaFocusConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into [Programare] (Name, Telephone, Email, Speciality, Details, Data, Hour, Active, UserId) values ('"+name+"','"+telefon.Text+"', '"+email+"','"+specialitate.SelectedValue+"','"+detalii.Text+"','"+calendar.SelectedDate+ "','"+ora.SelectedValue+ "', 1, "+usernameId+")", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    nume.Text = "";
                    telefon.Text = "";
                    specialitate.SelectedValue = "-1";
                    ora.SelectedValue = "-1";
                    detalii.Text = "";
                    AddValidationMessage.Text = "";
                    getProgramari();
                }
            }
            else
            {
                AddValidationMessage.Text = "Nu ati completat toate campurile obligatorii";
            }
        }

        private void getProgramari()
        {
            Table1.Rows.Clear();

            String cs = ConfigurationManager.ConnectionStrings["ClinicaFocusConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string username = Session["USERNAME"].ToString();
                SqlCommand cmd = new SqlCommand("select p.* from [dbo].[Programare] as p inner join [dbo].[User] as u on u.Id=p.UserId where u.Username='" + username + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0) // am programari?
                {
                    //populam tabelul cu headerul / capul de tabel
                    messageLabel.InnerText = "Numar de programari: " + dt.Rows.Count;
                    TableRow hr = new TableRow(); // hr = header row
                    TableCell hc0 = new TableCell(); // header column 0
                    hc0.Controls.Add(new LiteralControl("Cod")); // adaugam textul
                    hr.Cells.Add(hc0); // adaugam coloana in rand

                    TableCell hc1 = new TableCell();
                    hc1.Controls.Add(new LiteralControl("Data"));
                    hr.Cells.Add(hc1);

                    TableCell hc2 = new TableCell();
                    hc2.Controls.Add(new LiteralControl("Ora"));
                    hr.Cells.Add(hc2);

                    TableCell hc3 = new TableCell();
                    hc3.Controls.Add(new LiteralControl("Specialitatea"));
                    hr.Cells.Add(hc3);

                    TableCell hc4 = new TableCell();
                    hc4.Controls.Add(new LiteralControl("Detalii"));
                    hr.Cells.Add(hc4);

                    Table1.Rows.Add(hr); // adaugare rand de header (cap de tabel) in tabel

                    //populam tabelul cu datele venite de la baza de date
                    foreach (DataRow dr in dt.Rows)
                    {
                        TableRow r = new TableRow();
                        TableCell c0 = new TableCell();
                        c0.Controls.Add(new LiteralControl(dr["Id"].ToString()));
                        r.Cells.Add(c0);

                        TableCell c1 = new TableCell();
                       // c1.Controls.Add(new LiteralControl(dr["Data"].ToString()));
                        c1.Controls.Add(new LiteralControl(dr["Data"].ToString().Substring(0, 9)));
                        // TODO: Esti
                        r.Cells.Add(c1);

                        TableCell c2 = new TableCell();
                        c2.Controls.Add(new LiteralControl(dr["Hour"].ToString() + ":00"));
                        r.Cells.Add(c2);

                        TableCell c3 = new TableCell();
                        c3.Controls.Add(new LiteralControl(dr["Speciality"].ToString()));
                        r.Cells.Add(c3);

                        TableCell c4 = new TableCell();
                        c4.Controls.Add(new LiteralControl(dr["Details"].ToString()));
                        r.Cells.Add(c4);

                        Table1.Rows.Add(r);
                    }
                    anulareDiv.Visible = true;
                }
                else
                {
                    messageLabel.InnerText = "Deocamdata nu ai nici o programare.";
                    anulareDiv.Visible = false;
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (codDelete.Text != "")
            {
                String cs = ConfigurationManager.ConnectionStrings["ClinicaFocusConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("delete from [Programare] where Id="+codDelete.Text, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    validationMessage.ForeColor = Color.Green;
                    validationMessage.Text = "Programare anulata!";
                    codDelete.Text = "";
                    getProgramari(); // actualizez tabelul
                }
            }
            else
            {
                validationMessage.ForeColor = Color.Red;
                validationMessage.Text = "Introduceti codul pentru a anula programarea";
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