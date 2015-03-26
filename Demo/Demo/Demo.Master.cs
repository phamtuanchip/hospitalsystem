using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Demo : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMission_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Mission.aspx");
        }

        protected void btnAboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\AboutUs.aspx");
        }

        protected void btnLocations_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Locations.aspx");
        }

        protected void btnContacts_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Presentation\\Contact.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Home.aspx");
        }
    }
}
