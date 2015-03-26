using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.UserControls
{
    public partial class StaffOptions : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDocList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\BookingStaff\\StaffDataOperations\\DoctorList.aspx");
        }

        protected void btnPatientList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\BookingStaff\\StaffDataOperations\\PatientList.aspx");
        }

        protected void btnPatientRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\BookingStaff\\StaffDataOperations\\PatientRegistration.aspx");
        }

        protected void btnPatientVisits_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\BookingStaff\\StaffDataOperations\\PatientVisits.aspx");
        }
    }
}