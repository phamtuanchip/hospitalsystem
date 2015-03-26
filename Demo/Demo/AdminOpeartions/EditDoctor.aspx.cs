using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Demo.Business_Object;
using Demo.DAL;
using System.Data;

namespace Demo.Admin_Opeartions
{
    /// <summary>
    /// This class is used for Editing and adding the doctors using Grid View
    /// </summary>
    public partial class EditDoctor : System.Web.UI.Page
    {
        Doctor doctor = new Doctor();
        DataObject dataobj = new DataObject();
        DataSet ds;

        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Binding the Grid View with the use of ADO.NET
                ds = doctor.CategoryDoctor();
                grdEditDoctor.DataSource = ds;
                grdEditDoctor.DataBind();
                
                grdInsert.DataSource = ds;
                grdInsert.DataBind();
                dataobj.releaseConnection();
            }
        }

        /// <summary>
        /// This is used for editing the data inside the Grid View or making the 
        /// Grid view to be editable with the specific field such as ADDRESS, PHONE etc.
        /// Disabling the particular text boxes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdEditDoctor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdEditDoctor.EditIndex = e.NewEditIndex;
            DataSet ds = doctor.CategoryDoctor();
            grdEditDoctor.DataSource = ds;
            DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();

            //Disabling the text boxes which we want to make the default value
            TextBox textbox1 = grdEditDoctor.Rows[grdEditDoctor.EditIndex].Cells[1].Controls[0] as TextBox;
            textbox1.Enabled = false;
            TextBox textbox2 = grdEditDoctor.Rows[grdEditDoctor.EditIndex].Cells[2].Controls[0] as TextBox;
            textbox2.Enabled = false;            
        }

        /// <summary>
        /// This is used for Canceling the changes made during the edit button
        /// And binding the grid view with the earlier values
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdEditDoctor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Binding the Grid View using ADO.NET
            grdEditDoctor.EditIndex = -1;
            DataSet ds = doctor.CategoryDoctor();
            grdEditDoctor.DataSource = ds;
            DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
            grdEditDoctor.Visible = true;
        }

        /// <summary>
        /// This event is used for Updating the Grid View and Database upon the values 
        /// entered or replced inside the Grid View
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdEditDoctor_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;

            //Retrieving the Values from the Text boxes if the Update button of grid view is fired
            //Doctor ID
            TextBox textbox = grdEditDoctor.Rows[index].Cells[1].Controls[0] as TextBox;
            int id = System.Convert.ToInt32(textbox.Text);

            //Doctor Address
            TextBox textbox1 = grdEditDoctor.Rows[index].Cells[3].Controls[0] as TextBox;
            String address = textbox1.Text;

            //Doctor Phone
            TextBox textbox3 = grdEditDoctor.Rows[index].Cells[4].Controls[0] as TextBox;
            int phone = System.Convert.ToInt32(textbox3.Text);

            //Updating the Doctors information on the basis of their ID
            doctor.CategoryDoctorUpdate(id, address, phone);

            //Binding the grid View after the changes has been made to the dataBase
            DataSet ds = doctor.CategoryDoctor();
            grdEditDoctor.DataSource = ds;
            grdEditDoctor.EditIndex = -1;
            grdEditDoctor.DataBind();
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
        public void grdEditDoctor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Binding the Grid View with the next page Records
            grdEditDoctor.PageIndex = e.NewPageIndex;
            DataSet ds = doctor.CategoryDoctor();
            grdEditDoctor.DataSource = ds;
            grdEditDoctor.DataBind();
            grdInsert.DataSource = ds;
            grdInsert.DataBind();
        }

        public void grdInsert_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdEditDoctor.PageIndex = e.NewPageIndex;
            DataSet ds = doctor.CategoryDoctor();
            grdEditDoctor.DataSource = ds;
            grdEditDoctor.DataBind();
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
            //If the user pressed AddNew button on the Insert Grid View
            if(e.CommandName.Equals("AddNew"))
            {
                //Grab the values from the text boxes inside the Grid View
                //ID
                TextBox txtNewId = (TextBox)grdInsert.FooterRow.FindControl("txtNewId");
                
                //NAME
                TextBox txtNewName = (TextBox)grdInsert.FooterRow.FindControl("txtNewName"); 
                
                //ADDRESS
                TextBox txtNewAddress = (TextBox)grdInsert.FooterRow.FindControl("txtNewAddress"); 
                
                //PHONE
                TextBox txtNewPhone = (TextBox)grdInsert.FooterRow.FindControl("txtNewPhone");
                
                try
                {
                    //Inserting the data to the Bed Table with their new Values or Records
                    doctor.InsertRecord(System.Convert.ToInt32(txtNewId.Text), txtNewName.Text, txtNewAddress.Text, System.Convert.ToInt32(txtNewPhone.Text));
                }
                catch (Exception )
                {
                    lblError.Text = "Enter Valid Data";
                }

                //Binding the Grid View with all the Current Information of Doctors
                DataSet ds = doctor.CategoryDoctor();
                grdEditDoctor.DataSource = ds;
                grdEditDoctor.EditIndex = -1;
                grdEditDoctor.DataBind();
                
                grdInsert.DataSource = ds;
                grdInsert.EditIndex = -1;
                grdInsert.DataBind();
            }
        }

        #region unused code
        protected void grdEditDoctor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdInsert_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void grdInsert_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        #endregion unused code
    }
}
