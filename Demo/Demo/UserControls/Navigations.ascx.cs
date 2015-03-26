using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Navigations : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPatients_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Patients.aspx");
        }

        protected void btnVisitors_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Visitors.aspx");
        }

        protected void btnVolunteers_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Volunteers.aspx");
        }

        protected void btnHealthCare_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~\\Login.aspx");
        }
    }
}