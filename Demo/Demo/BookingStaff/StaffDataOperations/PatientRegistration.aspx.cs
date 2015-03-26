using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Demo.Business_Object;
using System.Data;
using Demo.DAL;

namespace Demo.StaffDataOperations
{
    /// <summary>
    /// This class is used for adding or editing the Patient Registration and
    /// Grid View is used for this purpose
    /// </summary>
    public partial class PatientRegistration : System.Web.UI.Page
    {
        Patient patient = new Patient();
        DataObject dataobj = new DataObject();


        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Binding the Grid View with all the details of the Patients who are Registered with the System
                DataSet ds = patient.CategoryRegistration();
                grdPatientRegistration.DataSource = ds;
                grdPatientRegistration.DataBind();

                grdInsert.DataSource = ds;
                grdInsert.DataBind();
                dataobj.releaseConnection();
            }
            lblError.Visible = false;

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
                grdInsert.Visible = false;
                grdPatientRegistration.Visible = false;
                AdminOptionsControls1.Visible = false;
                lblError.Visible = false;
                lg2.Visible = false;
                sto1.Visible = false;
            }

        }

        protected void grdPatientRegistration_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// This is used for editing the data inside the Grid View or making the 
        /// Grid view to be editable with the specific field such as ADDRESS, Phone etc.
        /// Disabling the particular text boxes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdPatientRegistration_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Binding the Grid view with all the Registered patient Details
            grdPatientRegistration.EditIndex = e.NewEditIndex;
            DataSet ds = patient.CategoryRegistration();
            grdPatientRegistration.DataSource = ds;
            DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();

            //Disabling the Patient Fields to be Editable
            //Patient ID
            TextBox textbox1 = grdPatientRegistration.Rows[grdPatientRegistration.EditIndex].Cells[1].Controls[0] as TextBox;
            textbox1.Enabled = false;
            
            //Patient Name
            TextBox textbox2 = grdPatientRegistration.Rows[grdPatientRegistration.EditIndex].Cells[2].Controls[0] as TextBox;
            textbox2.Enabled = false;

            //Patient DateOfBirth
            TextBox textbox4 = grdPatientRegistration.Rows[grdPatientRegistration.EditIndex].Cells[7].Controls[0] as TextBox;
            textbox4.Enabled = false;

        }

        /// <summary>
        /// This is used for Canceling the changes made during the edit button
        /// And binding the grid view with the earlier values
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdPatientRegistration_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Binding the Grid view with the original Text inside it.
            grdPatientRegistration.EditIndex = -1;
            DataSet ds = patient.CategoryRegistration();
            grdPatientRegistration.DataSource = ds;
            DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
            grdPatientRegistration.Visible = true;
        }

        /// <summary>
        /// This event is used for Updating the Grid View and Database upon the values 
        /// entered or replced inside the Grid View
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdPatientRegistration_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;

            //Grabing all the Details from the Grid View Control

            //ID
            TextBox textbox = grdPatientRegistration.Rows[index].Cells[1].Controls[0] as TextBox;
            int id = System.Convert.ToInt32(textbox.Text);
            
            //ADDRESS
            TextBox textbox1 = grdPatientRegistration.Rows[index].Cells[3].Controls[0] as TextBox;
            String address = textbox1.Text;
            
            //DateOfBirth
            TextBox textbox2 = grdPatientRegistration.Rows[index].Cells[4].Controls[0] as TextBox;
            DateTime dob = System.Convert.ToDateTime(textbox2.Text);
            
            //PHONE
            TextBox textbox3 = grdPatientRegistration.Rows[index].Cells[5].Controls[0] as TextBox;
            int phone = System.Convert.ToInt32(textbox3.Text);
            
            //EMERGENCY CONTACT
            TextBox textbox4 = grdPatientRegistration.Rows[index].Cells[6].Controls[0] as TextBox;
            int ephone = System.Convert.ToInt32(textbox4.Text);

            //Updating the Grid view and the Database with the current wriiten values/ Parameters
            patient.CategoryRegistrationUpdate(id,address,dob,phone,ephone);

            //Binding the Grid View with the Updated Value
            DataSet ds = patient.CategoryRegistration();
            grdPatientRegistration.DataSource = ds;
            grdPatientRegistration.EditIndex = -1;
            grdPatientRegistration.DataBind();
            grdInsert.EditIndex = -1;
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
        }

        /// <summary>
        /// Page Index change for viewing the New Records inside the Grid View Pages
        /// Calling the next page if the Next button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdPatientRegistration_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Binding the Grid View with the New Patient Details on the second Page
            grdPatientRegistration.PageIndex = e.NewPageIndex;
            DataSet ds = patient.CategoryRegistration();
            grdPatientRegistration.DataSource = ds;
            grdPatientRegistration.DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
        }

        public void grdInsert_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPatientRegistration.PageIndex = e.NewPageIndex;
            DataSet ds = patient.CategoryRegistration();
            grdPatientRegistration.DataSource = ds;
            grdPatientRegistration.DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
        }

        /// <summary>
        /// This event is used for Inserting the DOCTOR Records inside the DOCTOR Table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdInsert_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Cheking if the User had pressed or called the Command "AddNew"
            if (e.CommandName.Equals("AddNew"))
            {
                //Getting all the details from the Insert Grid View
                //ID
                TextBox txtNewId = (TextBox)grdInsert.FooterRow.FindControl("txtNewId");
                
                //Name
                TextBox txtNewName = (TextBox)grdInsert.FooterRow.FindControl("txtNewName");
                
                //Address
                TextBox txtNewAddress = (TextBox)grdInsert.FooterRow.FindControl("txtNewAddress");
                
                //DateOfBirth
                TextBox txtNewDob = (TextBox)grdInsert.FooterRow.FindControl("txtNewDob");
                
                //Phone Number
                TextBox txtNewPhone = (TextBox)grdInsert.FooterRow.FindControl("txtNewPhone");

                //Emergency Phone Number
                TextBox txtNewEmergency = (TextBox)grdInsert.FooterRow.FindControl("txtNewEmergency");
                
                //Registration Date
                TextBox txtNewRegistration = (TextBox)grdInsert.FooterRow.FindControl("txtNewRegistration");

                try
                {
                    //Trying to Insert the Record to the Patient Table for new Entry
                    patient.InsertRecord(System.Convert.ToInt32(txtNewId.Text), txtNewName.Text, txtNewAddress.Text,
                                            System.Convert.ToDateTime(txtNewDob.Text), System.Convert.ToInt32(txtNewPhone.Text),
                                            System.Convert.ToInt32(txtNewEmergency.Text), System.Convert.ToDateTime(txtNewRegistration.Text));
                }
                catch (Exception)
                {
                    //lblError.Visible = true;
                    //lblError.Text = "Enter Valid Data";
                }

                //Binding the Grid View with the List of all available Patients
                DataSet ds = patient.CategoryRegistration();
                grdPatientRegistration.DataSource = ds;
                grdPatientRegistration.EditIndex = -1;
                grdPatientRegistration.DataBind();

                grdInsert.DataSource = ds;
                grdInsert.EditIndex = -1;
                grdInsert.DataBind();
            }
        }

        protected void grdInsert_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
