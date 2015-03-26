using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Demo.DAL;

namespace Demo.AdminOpeartions
{
    /// <summary>
    /// This class is used for Discharging the In Patioents in the Hospital 
    /// with the help of Grid View and LINQ
    /// </summary>
    public partial class DischargeInPatient : System.Web.UI.Page
    {
        //Refferring to the .dbml file with all the stored procedures within it.
        BedListDataContext dc = new BedListDataContext();
        DataObject dataobj = new DataObject();

        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlInvoice.Visible = false;
            ddlInternalData.Visible = false;
            if (!Page.IsPostBack)
            {
                lblMessage.Visible = false;
                ddlInternalData.Visible = false;

                //Binding the Grid View with all available IN Patients
                var test = dc.Available_In_Patients();
                grdIn.DataSource = test;
                grdIn.DataBind();

                //Binding the Drop Down List with the PatientId's of IN Patients
                ddlInPatients.DataSource = test;
                ddlInPatients.DataTextField = "PatientId";
                ddlInPatients.DataValueField = "PatientId";
                ddlInPatients.DataBind();

                //Show alerts if there are no IN Patient's
                if (grdIn.Rows.Count == 0)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "There are no In-Patients Available!";
                    btnDischarge.Visible = false;
                }
            }
        }

        /// <summary>
        /// This event is used for Discharging the IN Patient whose ID is 
        /// selected in Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDischarge_Click(object sender, EventArgs e)
        {
            int id = System.Convert.ToInt32(ddlInPatients.SelectedValue);
            int PatientType = 1;

            //Getting the Patient Visit date by his ID
            var visit = dc.Get_In_Patient_Visit_date(@id);
            //Binding the Patient Visit Date to the Drop Down List
            ddlInternalData.DataSource = visit;
            ddlInternalData.DataTextField = "DateOfVisit";
            ddlInternalData.DataValueField = "DateOfVisit";
            ddlInternalData.DataBind();
            DateTime visitdate = System.Convert.ToDateTime(ddlInternalData.SelectedValue);
            //Getting the Visit Date and Discharge Date
            
            //Getting the Todays Date for making the patient Discharge
            DateTime dischargeDate = System.Convert.ToDateTime(DateTime.Now);

            //Getting the Difference in days
            TimeSpan timeinDays = dischargeDate.Subtract(visitdate);
            int days = 1+timeinDays.Days;

            //Getting the Bed Id of the In Patient
            var BedId = dc.Get_BedID_In_Patients(@id);
            //Binding the Patient Bed ID to the Drop Down List
            ddlInternalData.DataSource = BedId;
            ddlInternalData.DataTextField = "BedId";
            ddlInternalData.DataValueField = "BedId";
            ddlInternalData.DataBind();
            string SbedId = System.Convert.ToString(ddlInternalData.SelectedValue);

            //Getting the Bed Rate for the Bed Id
            var bedRate = dc.Get_Bed_Rate_In_Patients(@SbedId);
            //Binding the Patient Bed Rate to the Drop Down List
            ddlInternalData.DataSource = bedRate;
            ddlInternalData.DataTextField = "RatePerDay";
            ddlInternalData.DataValueField = "RatePerDay";
            ddlInternalData.DataBind();
            int IBedRate = System.Convert.ToInt32(ddlInternalData.SelectedValue);

            //Calculating the Total Cost of the InPatient Visits
            int totalCost = days * IBedRate;

            //Getting the Name of the Patient
            var name = dc.Get_In_Patient_Name(@id);
            //Binding the Patient NAME Date to the Drop Down List
            ddlInternalData.DataSource = name;
            ddlInternalData.DataTextField = "Name";
            ddlInternalData.DataValueField = "Name";
            ddlInternalData.DataBind();
            string PName = System.Convert.ToString(ddlInternalData.SelectedValue);

            //Getting the Description of the Patient
            var treatment = dc.Get_Description_In_Patient(@id);
            ddlInternalData.DataSource = treatment;
            ddlInternalData.DataTextField = "Treatment";
            ddlInternalData.DataValueField = "Treatment";
            ddlInternalData.DataBind();
            string Description = System.Convert.ToString(ddlInternalData.SelectedValue);

            try
            {
                //Updating the Patient Visit table for setting the Discharge Date, 
                //Patient's Type to 1 i.e. 1 and his status
                dc.Update_Patient_In_Vists(@PatientType, @dischargeDate, @id);
                
                //Binding the Grid View with the next available IN Patient
                var test = dc.Available_In_Patients();
                grdIn.DataSource = test;
                grdIn.DataBind();

                //Binding the Drop Down with the next available IN Patient
                ddlInPatients.DataSource = test;
                ddlInPatients.DataTextField = "PatientId";
                ddlInPatients.DataValueField = "PatientId";
                ddlInPatients.DataBind();
            }
            catch (Exception)
            {
                lblMessage.Text = "Can not find the DataBase.";
            }

            try
            {
                //Mapping all the data in the Invoice
                txtCharges.Text = "$" + totalCost + ".00";
                txtPatientID.Text = System.Convert.ToString(id);
                txtDate.Text = System.Convert.ToString(dischargeDate);
                txtAmount.Text = "$" + totalCost + ".00";
                txtPatientName.Text = PName;
                txtDescription.Text = Description;

                //Showing the Generated Invoice for Discharged IN Patient
                grdIn.Visible = false;
                pnlInvoice.Visible = true;
            }
            catch (Exception)
            {
                lblMessage.Text = "Can not display the Invoice.";
            }

            /*txtCharges.Text = "$" + totalCost+".00";
            txtPatientID.Text = System.Convert.ToString(id);
            txtDate.Text = System.Convert.ToString(dischargeDate);
            txtAmount.Text = "$" + totalCost + ".00";
            txtPatientName.Text = PName;
            txtDescription.Text = Description;*/
        }

        /// <summary>
        /// This event is used for Binding the Grid View with appropriate
        /// details of the Patient iD being selected in Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlInPatients_SelectedIndexChanged(object sender, EventArgs e)
        {
            int valuee = System.Convert.ToInt32(ddlInPatients.SelectedValue);
            grdIn.DataSource = dc.In_Patients_Id(@valuee);
            grdIn.DataBind();
            dataobj.releaseConnection();
        }

        /// <summary>
        /// This event is used for Showing the Grid View and hhiding the Invoice
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnInvoice_Click(object sender, EventArgs e)
        {
            pnlInvoice.Visible = false;
            grdIn.Visible = true;
            if (grdIn.Rows.Count == 0)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "There are no In-Patients Available!";
                btnDischarge.Visible = false;
            }

        }


    }
}
