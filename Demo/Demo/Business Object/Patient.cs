using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Demo.DAL;
using System.Data;
using System.Data.SqlClient;

namespace Demo.Business_Object
{
    /// <summary>
    /// This class is used for Patient Business Object required in Hospital System
    /// </summary>
    public class Patient
    {
        DataObject dataobj = new DataObject();

        public Patient()
        { }

        #region Binding the available Registration Dates to the Drop Down (PatientList.aspx)
        /// <summary>
        /// //Binding the available Registration Dates to the Drop Down
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet CategoryDischargeList()
        {
            DataSet condition = dataobj.CategoryDischargeList();
            return condition;
        }
        #endregion Binding the available Registration Dates to the Drop Down (PatientList.aspx)

        #region Filtering Patient Details upon Selected Values in Drop Down List by ADO.NET (PatientList.aspx)
        /// <summary>
        /// This function is used for the Selecting the Patients depending upon the selected values from the Drop Down List.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e">DataSet</param>
        public DataSet SelectedFilterList(string name, string register)
        {
            DataSet condition = dataobj.CategorySelectedFilterList(name,register);
            return condition;
        }
        #endregion Filtering Patient Details upon Selected Values in Drop Down List (PatientList.aspx)

        #region Binding the available Registration Dates to the GridView by ADO.NET(PatientList.aspx)
        /// <summary>
        /// //Binding the Grid View on the basis of the Selected Value in Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns>DataSet</returns>
        public DataSet SelectedDischargeDateList(string index)
        {
            DataSet condition = dataobj.SelectedDischargeDateList(index);
            return condition;
        }
        #endregion Binding the available Registration Dates to the GridView (PatientList.aspx)

        #region Binding the available Patients to the Drop Down by ADO.NET(PatientList.aspx)
        /// <summary>
        /// //Binding the available Patients to the Drop Down List
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet CategoryNamesList()
        {
            DataSet condition = dataobj.CategoryNameList();
            return condition;
        }
        #endregion Binding the available Patients to the GridView by ADO.NET(PatientList.aspx)

        #region Binding the GridView by the selected value of Drop Down by ADO.NET(PatientList.aspx)
        /// <summary>
        /// //Binding the Grid View on the basis of the Selected Value in Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public DataSet SelectedNameList(string index)
        {
            DataSet condition = dataobj.SelectedNameList(index);
            return condition;
        }
        #endregion Binding the GridView by the selected value of Drop Down by ADO.NET(PatientList.aspx)


        #region Registered Patients by ADO.NET (PatientRegistration.aspx)
        /// <summary>
        /// //Binding the Grid View with all the details of the Patients who are Registered with the System
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet CategoryRegistration()
        {
            DataSet condition = dataobj.CategoryRegistration();
            return condition;
        }
        #endregion Registered Patients by ADO.NET (PatientRegistration.aspx)

        #region Updating the Patient Record by ADO.NET (PatientRegistration.aspx)
        /// <summary>
        /// //Updating the Grid view and the Database with the current wriiten values/ Parameters
        /// </summary>
        /// <param name="id">id</param>
        /// <param name="address">address</param>
        /// <param name="dob">dob</param>
        /// <param name="phone">phone</param>
        /// <param name="ephone">ephone</param>
        public void CategoryRegistrationUpdate(int id,String address,DateTime dob,int phone,int ephone)
        {
            dataobj.CategoryRegistrationUpdate(id,address,dob,phone,ephone);
        }
        #endregion Updating the Patient Record by ADO.NET (PatientRegistration.aspx)

        #region Insert New Patient Registration (PatientRegistration.aspx)
        /// <summary>
        /// //Trying to Insert the Record to the Patient Table for new Entry
        /// </summary>
        /// <param name="id">Patient ID</param>
        /// <param name="name">Patient NAME</param>
        /// <param name="address">Patient Address</param>
        /// <param name="dob">Patient DOB</param>
        /// <param name="phone">Patient Phone Number</param>
        /// <param name="emergency">Patient Emergency Phone</param>
        /// <param name="registration">Patient Registration Date</param>
        public void InsertRecord(int id, string name, string address, DateTime dob, int phone,int emergency, DateTime registration)
        {
            dataobj.InsertPatientRecord(id, name, address,dob, phone,emergency,registration);
        }
        #endregion Insert New Patient Registration (PatientRegistration.aspx)


        #region Retrieving Patient ID's (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This function is used for getting the Patient Id's which are not allocated with Doctors
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet GetId()
        {
            DataSet condition = dataobj.PatientId();
            return condition;
        }
        #endregion Retrieving Patient ID's (AssignDoctorToPatient.aspx)


        #region Binding the Drop Down List with the Visted Patient Names by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Names who had visited for their treatment
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet CategoryNames()
        {
            DataSet condition = dataobj.CategoryNames();
            return condition;
        }
        #endregion Binding the Drop Down List with the Visted Patient Names by ADO.NET (PatientVisits.aspx)

        #region Binding the Grid View with the Selected Drop Down Item from the List by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the selected value from the Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public DataSet SelectedNameDetails(string index)
        {
            DataSet condition = dataobj.SelectedNameDetails(index);
            return condition;
        }
        #endregion Binding the Grid View with the Selected Drop Down Item from the List by ADO.NET (PatientVisits.aspx)

        #region Binding the Drop Down List with the Patient Visits By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Visits Dates who had visited for their treatment
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryVisitDates()
        {
            DataSet condition = dataobj.CategoryVisitDates();
            return condition;
        }
        #endregion Binding the Drop Down List with the Patient Visits (PatientVisits.aspx)

        #region Binding the Drop Down List with the Patient Discharge Dates By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Discharge Dates who had visited for their treatment
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryDischargeDates()
        {
            DataSet condition = dataobj.CategoryDischargeDates();
            return condition;
        }
        #endregion Binding the Drop Down List with the Patient Discharge Dates (PatientVisits.aspx)

        #region Binding Grid View with the selected VisitDate By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the selected value from the Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns>DataSet</returns>
        public DataSet SelectedVisitDateDetails(string index)
        {
            DataSet condition = dataobj.SelectedVisitDateDetails(index);
            return condition;
        }
        #endregion Binding Grid View with the selected VisitDate (PatientVisits.aspx)

        #region Binding the Grid View with selected Discharged Date by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the selected Discharged Date from the Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public DataSet SelectedDischargeDateDetails(string index)
        {
            DataSet condition = dataobj.SelectedDischargeDateDetails(index);
            return condition;
        }
        #endregion Binding the Grid View with selected Discharged Date by ADO.NET (PatientVisits.aspx)

        #region Binding the Grid View with the Selected Options by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the Selected Options from the Drop Down List
        /// </summary>
        /// <param name="name">Patient Name</param>
        /// <param name="visit">Patient Visit Date</param>
        /// <param name="discharge">Patient Discharged Date</param>
        /// <returns></returns>
        public DataSet SelectedDetails(string name, string visit, string discharge)
        {
            DataSet condition = dataobj.SelectedDetails(name, visit, discharge);
            return condition;
        }
        #endregion Binding the Grid View with the Selected Options by ADO.NET (PatientVisits.aspx)

    }
}
