using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPatients_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Patients.aspx");
        }

        protected void btnVisitors_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Visitors.aspx");
        }

        protected void btnVolunteers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Volunteers.aspx");
        }

        protected void lnkPrivacy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\PrivacyPolicy.aspx");
        }

        protected void btnHealthCare_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Login.aspx");
        }

        protected void lnkSitemap_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\WebPaths.aspx");
        }

        
    }
}
