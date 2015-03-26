using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.AdminOpeartions
{
    /// <summary>
    /// This class is used for viewing the available Bed List inside the Grid View, 
    /// and also used for adding new Beds to the Hospital using Grid View
    /// </summary>
    public partial class BedList : System.Web.UI.Page
    {
        //Use of LINQ as a use of BedList.dbml file is used.
        BedListDataContext dc = new BedListDataContext();
        Bed bed = new Bed();

        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Binding the Grid View with the LINQ by calling the Procedure name
                var test = dc.Available_Bed_List();
                grdBedList.DataSource = test;
                grdBedList.DataBind();

                grdInsert.DataSource = test;
                grdInsert.DataBind();
            }
        }

        /// <summary>
        /// Page Index change for viewing the New Records inside the Grid View Pages
        /// Calling the next page if the Next button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdBedList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Binding the Grid View with the next page Records
            grdBedList.PageIndex = e.NewPageIndex;
            var test = dc.Available_Bed_List();
            grdBedList.DataSource = test;
            grdBedList.DataBind();
        }

        /// <summary>
        /// This is used for editing the data inside the Grid View or making the 
        /// Grid view to be editable with the specific field such as RATES, Types etc.
        /// Disabling the particular text boxes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdBedList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Binding the Grid View with the help of LINQ
            grdBedList.EditIndex = e.NewEditIndex;
            var test = dc.Available_Bed_List();
            grdBedList.DataSource = test;
            grdBedList.DataBind();

            //Disabling the text boxes which we want to make the default value
            TextBox textbox1 = grdBedList.Rows[grdBedList.EditIndex].Cells[1].Controls[0] as TextBox;
            textbox1.Enabled = false;
            TextBox textbox2 = grdBedList.Rows[grdBedList.EditIndex].Cells[4].Controls[0] as TextBox;
            textbox2.Enabled = false;
        }

        /// <summary>
        /// This is used for Canceling the changes made during the edit button
        /// And binding the grid view with the earlier values
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdBedList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Binding the Grid View using LINQ
            grdBedList.EditIndex = -1;
            var test = dc.Available_Bed_List();
            grdBedList.DataSource = test;
            DataBind();
            grdBedList.Visible = true;
        }

        /// <summary>
        /// This event is used for Updating the Grid View and Database upon the values 
        /// entered or replced inside the Grid View
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void grdBedList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;

            //Getting the appropriate data which the user has permission to change.
            TextBox textbox = grdBedList.Rows[index].Cells[1].Controls[0] as TextBox;
            string id = textbox.Text;

            TextBox textbox1 = grdBedList.Rows[index].Cells[2].Controls[0] as TextBox;
            String bedname = textbox1.Text;

            TextBox textbox3 = grdBedList.Rows[index].Cells[3].Controls[0] as TextBox;
            int rate = System.Convert.ToInt32(textbox3.Text);

            //Updating the Bed table with the parameters passed
            dc.update_Bed_List(@id,@bedname,@rate);

            //Binding the grid view with the updated values within the database
            grdBedList.EditIndex = -1;
            grdBedList.DataBind();
            var test = dc.Available_Bed_List();
            grdBedList.DataSource = test;
            grdBedList.DataBind();
        }

        /// <summary>
        /// This event is used for Inserting the Bed Records inseide the BED Table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdInsert_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //If the user pressed AddNew button on the Insert Grid View
            if (e.CommandName.Equals("AddNew"))
            {
                try
                {
                    //Grab the values from the text boxes inside the Grid View
                    //ID
                    TextBox txtNewId = (TextBox)grdInsert.FooterRow.FindControl("txtNewId");
                    string id = txtNewId.Text;

                    //Name
                    TextBox txtNewName = (TextBox)grdInsert.FooterRow.FindControl("txtNewName");
                    string name = txtNewName.Text;

                    //Rate
                    TextBox txtNewRate = (TextBox)grdInsert.FooterRow.FindControl("txtNewRate");
                    int rate = System.Convert.ToInt32(txtNewRate.Text);

                    //Bed Type
                    TextBox txtNewBedType = (TextBox)grdInsert.FooterRow.FindControl("txtNewBedType");
                    string bedtype = txtNewBedType.Text;

                    //Inserting the data to the Bed Table with their new Values or Records
                    dc.Insert_Bed_Record(@id, @name, @rate, @bedtype);
                }
                catch (Exception )
                {
                    lblError.Text = "Enter Valid Data";
                }

                //Binding the Grid View with all the available Beds in the Bed Table
                var test = dc.Available_Bed_List();
                grdBedList.DataSource = test;
                grdBedList.EditIndex = -1;
                grdBedList.DataBind();

                grdInsert.DataSource = test;
                grdInsert.EditIndex = -1;
                grdInsert.DataBind();
            }
        }

        protected void grdInsert_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdBedList.PageIndex = e.NewPageIndex;
            var test = dc.Available_Bed_List();
            grdBedList.DataSource = test;
            grdBedList.DataBind();

            grdInsert.PageIndex = e.NewPageIndex;
            grdBedList.DataSource = test;
            grdBedList.DataBind();
        }

        protected void grdInsert_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
