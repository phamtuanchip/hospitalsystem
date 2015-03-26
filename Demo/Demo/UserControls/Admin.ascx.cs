using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.UserControls
{
    public partial class Admin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDoctorPatientInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\AdminOpeartions\\AssignDoctorToPatient.aspx");
        }

        protected void btnEditDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\AdminOpeartions\\EditDoctor.aspx");
        }

        protected void btnBedList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\AdminOpeartions\\BedList.aspx");
        }

        protected void btnDischargePatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\AdminOpeartions\\DischargeInPatient.aspx");
        }

        protected void btnDoctorPerformance_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\AdminOpeartions\\Reports\\Top5DoctorList.aspx");
        }

    }
}