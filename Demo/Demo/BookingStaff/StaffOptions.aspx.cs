using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class StaffOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                if (Session["user"].Equals("admin"))
                {
                    Admin1.Visible = true;
                    Label1.Text = "St. Vincent's Admin Options";
                }
                if (Session["user"].Equals("staff"))
                {
                    Admin1.Visible = false;
                    Label1.Text = "St. Vincent's Staff Options";
                }                
            }
            else
            {
                SiteMapPath1.Visible = false;
                Label1.Text = "You cannot access this page.";
                btnLogout.Visible = false;
                uscn1.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session.Contents.RemoveAll();
            Response.Redirect("~\\Login.aspx");
        }
    }
}
