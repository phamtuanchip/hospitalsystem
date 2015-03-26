using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Demo.Business_Object;
using Demo.DAL;

namespace Demo.StaffDataOperations
{
    /// <summary>
    /// This class is used for Displaying all the Patients in the System with their Date Of Dioscharge
    /// </summary>
    public partial class PatientList : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
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
                lblError.Visible = false;

                #region For Registration Dates Filtering

                //Binding the available Registration Dates to the Drop Down List
                ds = patient.CategoryDischargeList();
                ddlDischarge.DataSource = ds;
                ddlDischarge.DataTextField = ds.Tables[0].Columns["DateOfRegistration"].ColumnName.ToString();
                ddlDischarge.DataValueField = ds.Tables[0].Columns["DateOfRegistration"].ColumnName.ToString();
                ddlDischarge.DataBind();
                ddlDischarge.SelectedIndex = 0;

                //Binding the Grid View on the basis of the Selected Value in Drop Down List
                grdPatientList.DataSource = patient.SelectedDischargeDateList(ddlDischarge.SelectedValue);
                grdPatientList.DataBind();
                dataobj.releaseConnection();
                #endregion For Discharge Dates Filtering

                #region For Names Filtering

                //Binding the available Patients to the Drop Down List
                ds = patient.CategoryNamesList();
                ddlName.DataSource = ds;
                ddlName.DataTextField = ds.Tables[0].Columns["Name"].ColumnName.ToString();
                ddlName.DataValueField = ds.Tables[0].Columns["Name"].ColumnName.ToString();
                ddlName.DataBind();
                ddlName.SelectedIndex = 0;

                //Binding the Grid View on the basis of the Selected Value in Drop Down List
                grdPatientList.DataSource = patient.SelectedNameList(ddlName.SelectedValue);
                grdPatientList.DataBind();
                dataobj.releaseConnection();
                #endregion For Names Filtering
            }
            lblError.Visible = false;

        }

        /// <summary>
        /// This function is used for the Index change property for the Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e">DataSet</param>
        protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected Values in both Drop Down's
            grdPatientList.DataSource = patient.SelectedFilterList(ddlName.SelectedValue, ddlDischarge.SelectedValue);
            grdPatientList.DataBind();
            dataobj.releaseConnection();

            if (grdPatientList.Rows.Count == 0)
            {
                lblError.Text = "Sorry, We could not find any records.";
                lblError.Visible = true;
            }
        }

        /// <summary>
        /// This function is used for the Index change property for the Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e">DataSet</param
        protected void ddlDischarge_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected Values in both Drop Down's
            grdPatientList.DataSource = patient.SelectedFilterList(ddlName.SelectedValue, ddlDischarge.SelectedValue);
            grdPatientList.DataBind();
            dataobj.releaseConnection();

            if (grdPatientList.Rows.Count == 0)
            {
                lblError.Text = "Sorry, We could not find any records.";
                lblError.Visible = true;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
        }

        

    }
}
