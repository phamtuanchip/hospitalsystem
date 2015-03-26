using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Demo.Business_Object;
using System.Data;
using System.Data.SqlClient;
using Demo.DAL;

namespace Demo
{
    /// <summary>
    /// This class is used for all the Patient Visits within the Hospital for both IN and OUT
    /// </summary>
    public partial class PatientRegisteration : System.Web.UI.Page
    {
        User user = new User();
        DataObject dataobj = new DataObject();
        Patient patient = new Patient();

        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                #region For Names Filtering

                //Binding the Drop Down List with the Patient Names who had visited for their treatment
                DataSet ds = patient.CategoryNames();
                ddlCategoryName.DataSource = ds;
                ddlCategoryName.DataTextField = ds.Tables[0].Columns["Name"].ColumnName.ToString();
                ddlCategoryName.DataValueField = ds.Tables[0].Columns["Name"].ColumnName.ToString();
                ddlCategoryName.DataBind();
                ddlCategoryName.SelectedIndex = 0;
                
                //Binding the Grid View with the selected value from the Drop Down List
                grdPatientVists.DataSource = patient.SelectedNameDetails(ddlCategoryName.SelectedValue);
                grdPatientVists.DataBind();
                //dataobj.releaseConnection();
                #endregion For Names Filtering

                #region For Visit Dates Filtering

                //Binding the Drop Down List with the Patient Visits Dates who had visited for their treatment
                ds = patient.CategoryVisitDates();
                ddlDateVisit.DataSource = ds;
                ddlDateVisit.DataTextField = ds.Tables[0].Columns["DateOfVisit"].ColumnName.ToString();
                ddlDateVisit.DataValueField = ds.Tables[0].Columns["DateOfVisit"].ColumnName.ToString();
                ddlDateVisit.DataBind();
                ddlDateVisit.SelectedIndex = 0;

                //Binding the Grid View with the selected value from the Drop Down List
                grdPatientVists.DataSource = patient.SelectedVisitDateDetails(ddlDateVisit.SelectedValue);
                grdPatientVists.DataBind();
                //dataobj.releaseConnection();
                #endregion Visit Dates Filtering

                #region For Discharge Dates Filtering

                //Binding the Drop Down List with the Patient Discharge Dates who had visited for their treatment
                ds = patient.CategoryDischargeDates();
                ddlDischargeDate.DataSource = ds;
                ddlDischargeDate.DataTextField = ds.Tables[0].Columns["DateOfDischarge"].ColumnName.ToString();
                ddlDischargeDate.DataValueField = ds.Tables[0].Columns["DateOfDischarge"].ColumnName.ToString();
                ddlDischargeDate.DataBind();
                ddlDischargeDate.SelectedIndex = 0;

                //Binding the Grid View with the selected Discharged Date from the Drop Down List
                grdPatientVists.DataSource = patient.SelectedDischargeDateDetails(ddlDischargeDate.SelectedValue);
                grdPatientVists.DataBind();
                dataobj.releaseConnection();
                #endregion Discharge Dates Filtering
            }

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
                AdminOptionsControls1.Visible = false;
                grdPatientVists.Visible = false;
                lblByName.Visible = false;
                lblDateOfDischarge.Visible = false;
                lblDateOfVisit.Visible = false;
                lblMessage.Visible = false;
                lblRegisterations.Text="You cannot access this page.";
                sto1.Visible = false;
                lg2.Visible = false;
                ddlCategoryName.Visible = false;
                ddlDateVisit.Visible = false;
                ddlDischargeDate.Visible = false;
                Image10.Visible = false;
                Image11.Visible = false;
                Image12.Visible = false;
                Image14.Visible = false;
                Image15.Visible = false;
                Image16.Visible = false;
                Image5.Visible = false;
                
            }
        }

        /// <summary>
        /// Page Index change for viewing the New Records inside the Grid View Pages
        /// Calling the next page if the Next button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdEditDoctor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Binding the Grid View with next page data 
            grdPatientVists.PageIndex = e.NewPageIndex;
            DataSet ds = patient.SelectedNameDetails(ddlCategoryName.SelectedValue);
            grdPatientVists.DataSource = ds;
            grdPatientVists.DataBind();
        }

        /// <summary>
        /// This event is used for Binding the Grid View with appropriate
        /// details of the Patient being selected in Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlCategoryName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected Option from the Drop Down List
            grdPatientVists.DataSource = patient.SelectedDetails(ddlCategoryName.SelectedValue, ddlDateVisit.SelectedValue, ddlDischargeDate.SelectedValue);
            grdPatientVists.DataBind();
            dataobj.releaseConnection();
            lblMessage.Text = "Sorry - we couldn't find any records";
        }

        /// <summary>
        /// This event is used for Binding the Grid View with appropriate
        /// details of the Patient being selected in Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlDateVisit_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected Option from the Drop Down List
            grdPatientVists.DataSource = patient.SelectedDetails(ddlCategoryName.SelectedValue, ddlDateVisit.SelectedValue, ddlDischargeDate.SelectedValue);
            grdPatientVists.DataBind();
            dataobj.releaseConnection();
            lblMessage.Text = "Sorry - we couldn't find any records";

        }

        /// <summary>
        /// This event is used for Binding the Grid View with appropriate
        /// details of the Patient being selected in Drop Down List
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlDischargeDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Binding the Grid View with the Selected Option from the Drop Down List
            grdPatientVists.DataSource = patient.SelectedDetails(ddlCategoryName.SelectedValue, ddlDateVisit.SelectedValue, ddlDischargeDate.SelectedValue);
            grdPatientVists.DataBind();
            dataobj.releaseConnection();
            lblMessage.Text = "Sorry - we couldn't find any records.";
        }
    }
}