using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.DataOperations
{
    /// <summary>
    /// This class is for the available Doctor List,
    /// Nothing is implemented in this class because the function is implemented by Design View
    /// </summary>
    public partial class DoctorLits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                if (Session["user"].Equals("admin"))
                {
                    AdminOptionsControls1.Visible = true;
                }
                if (Session["user"].Equals("staff"))
                {
                    AdminOptionsControls1.Visible = false;
                }                
            }
            else
            {
                Label1.Text = "You cannot access this page.";
                lg2.Visible = false;
                GridView1.Visible = false;
                sto1.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
