using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Demo.DAL;
using Demo.Business_Object;

namespace Demo.AdminOpeartions
{
    /// <summary>
    /// This class is used for assigning the Doctor to the Patient
    /// </summary>
    public partial class AssignDoctorToPaatient : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        Doctor doctor = new Doctor();
        DataObject dataobj = new DataObject();
        Patient patient = new Patient();
        Bd bed = new Bd();
        DoctorPatientVisit assigndoctor = new DoctorPatientVisit();

        /// <summary>
        /// Page_Load for the web page for the onloading operations we need.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //If the page is not being reloaded then apply the folloowing settings
            if (!Page.IsPostBack)
            {
                rdbIn.Checked = true;
                if (rdbIn.Checked == true)
                {
                    txtPatientType.Text = "0";
                    txtPatientType.Visible = false;
                }

                txtVisitDate.Text = System.Convert.ToString(DateTime.Now);
                txtVisitDate.ReadOnly = true;
                txtPatientType.Visible = false;

                //Binding Grid View with the available Doctor Id
                ds = doctor.CategoryHistory();
                ddlDoctors.DataSource = ds;
                ddlDoctors.DataTextField = "Id";
                ddlDoctors.DataValueField = "Id";
                ddlDoctors.DataBind();

                //Get Doctor Id for Assigning Doctor
                ddlDoctorId.DataSource = ds;
                ddlDoctorId.DataTextField = "Id";
                ddlDoctorId.DataValueField = "Id";
                ddlDoctorId.DataBind();

                //Get Patient Id for Assigning Doctor
                ds = patient.GetId();
                ddlPatientId.DataSource = ds;
                ddlPatientId.DataTextField = "Id";
                ddlPatientId.DataValueField = "Id";
                ddlPatientId.DataBind();

                //Get Bed Id for Assigning Doctor
                ds = bed.GetBedId();
                ddlBedId.DataSource = ds;
                ddlBedId.DataTextField = "Id";
                ddlBedId.DataValueField = "Id";
                ddlBedId.DataBind();

                //Binding the Grid View with the Drop down selected value (Doctors ID)
                grdHistory.DataSource = doctor.SelectedIDDetails(ddlDoctors.SelectedValue);
                grdHistory.DataBind();
                dataobj.releaseConnection();

                pnlAssign.Visible=false;
            }
            lblMessage.Visible = false;            
            //pnlAssign.Visible = false;
        }

        /// <summary>
        /// This function is used for the Page change of the Grid view for viewing the records present, on the second page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdHistory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdHistory.PageIndex = e.NewPageIndex;
            grdHistory.DataSource = doctor.SelectedIDDetails(ddlDoctors.SelectedValue);
            grdHistory.DataBind();
            dataobj.releaseConnection();
        }

        /// <summary>
        /// This function is used for the Index change property for the Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlDoctors_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected ID in the Grid View
            grdHistory.DataSource = doctor.SelectedIDDetails(ddlDoctors.SelectedValue);
            grdHistory.DataBind();
            dataobj.releaseConnection();

            if (grdHistory.Rows.Count == 0)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Sorry - we couldn't find any records";
            }
        }

        /// <summary>
        /// This function will be used to have no bed ID's as Patient in OUT
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void rdbOut_CheckedChanged(object sender, EventArgs e)
        {
            lblBedId.Enabled = false;
            ddlBedId.Enabled = false;
            txtPatientType.Text = "1";
            txtPatientType.Visible = false;
        }

        /// <summary>
        /// /// This function will be used to have bed ID's as Patient in IN
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void rdbIn_CheckedChanged(object sender, EventArgs e)
        {
            lblBedId.Visible = true;
            ddlBedId.Enabled = true;
            ddlBedId.Visible = true;
            txtPatientType.Text = "0";
            txtPatientType.Visible = false;
            //Response.Write(txtPatientType.Text);
        }

        /// <summary>
        /// This is the button event command for assigning the doctor to the patients
        /// which has not been treated. And along with this it makes the Update or 
        /// Insert the data/Visit details within the Table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAssign_Click(object sender, EventArgs e)
        {
            string enalbledBedId;
            string DoctorId = ddlDoctorId.SelectedValue;
            string PatientId = ddlPatientId.SelectedValue;
            int PatientType = System.Convert.ToInt32(txtPatientType.Text);

            if (rdbIn.Checked == true)
            {
                enalbledBedId = ddlBedId.SelectedValue;
            }
            else
            {
                enalbledBedId = "";
            }

            string VisitDate = txtVisitDate.Text;
            string Symptopms = txtSymptoms.Text;
            string Disease = txtDisease.Text;
            string Treatment = txtTreatment.Text;

            //Use of Try..Catch Block to handle the insertion
            try
            {
                //Assigning the doctor to the patient with all the details Admin has provided
                assigndoctor.AssignDoctorToPatient(DoctorId, PatientId, PatientType, enalbledBedId, VisitDate, Symptopms, Disease, Treatment);
            }
            catch (Exception )
            {
                lblMessage.Text = "Error in inserting the Data";
            }

            //Binding the Grid View with selected value of Drop Down List
            grdHistory.DataSource = doctor.SelectedIDDetails(ddlDoctors.SelectedValue);
            grdHistory.DataBind();
            dataobj.releaseConnection();

            txtDisease.Text = "";
            txtSymptoms.Text = "";
            txtTreatment.Text = "";
        }


        protected void btnAssignDoctor_Click(object sender, EventArgs e)
        {
            pnlAssign.Visible = true;
            grdHistory.Visible = false;
            lblMessage.Visible = false;
            pnlSearch.Visible = false;
        }

        /// <summary>
        /// This is used for viewing the Patient and Doctor History that is 
        /// which patient is treated by which doctor and whether the patient in IN or OUT 
        /// Date of Visit, Date Of Discharge etc.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnHistory_Click(object sender, EventArgs e)
        {
            pnlAssign.Visible = false;
            grdHistory.Visible = true;
            pnlSearch.Visible = true;
        }

        protected void txtVisitDate_TextChanged(object sender, EventArgs e)
        {

        }       
    }
}