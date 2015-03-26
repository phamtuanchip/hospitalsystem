using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Demo.Business_Object;
using Demo.DAL;

namespace Demo.Business_Object
{
    /// <summary>
    /// This class is the Business Object of Doctor for g=handling all Doctors Information and Needs
    /// </summary>
    public class Doctor
    {
        DataObject dataobj = new DataObject();

        #region Retrieving DOCTOR ID (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This Function is used for retrieving all the Doctors ID from the DataObject
        /// </summary>
        /// <returns>Data Set</returns>
        public DataSet CategoryHistory()
        {
            DataSet condition = dataobj.CategoryHistory();
            return condition;
        }
        #endregion Retrieving DOCTOR ID (AssignDoctorToPatient.aspx)

        #region Complete DOCTOR Information (EditDoctor.aspx)
        /// <summary>
        /// This Function is used for retrieving all the Doctors Information from the DataObject
        /// </summary>
        /// <returns>Data Set</returns>
        public DataSet CategoryDoctor()
        {
            DataSet condition = dataobj.CategoryDoctor();
            return condition;
        }
        #endregion Complete DOCTOR Information (EditDoctor.aspx)

        #region DOCTOR Information Updating (EditDoctor.aspx)
        /// <summary>
        /// //Updating the Doctors information on the basis of their ID
        /// Updating the Address and Phone
        /// </summary>
        /// <param name="id">Doctors ID</param>
        /// <param name="address">Doctors Address</param>
        /// <param name="phone">Doctors Phone</param>
        public void CategoryDoctorUpdate(int id, String address, int phone)
        {
            dataobj.CategoryDoctorUpdate(id, address, phone);
        }
        #endregion DOCTOR Information Updating (EditDoctor.aspx)

        #region Insert DOCTOR record (EditDoctor.aspx)
        /// <summary>
        /// //Inserting the data to the DOCTOR Table with their new Values or Records
        /// </summary>
        /// <param name="id">Doctors ID</param>
        /// <param name="name">Doctors Name</param>
        /// <param name="address">Doctors Address</param>
        /// <param name="phone">Doctors Phone</param>
        public void InsertRecord(int id, string name, string address, int phone)
        {
            dataobj.InsertDoctorRecord(id, name, address, phone);
        }
        #endregion Insert DOCTOR record (EditDoctor.aspx)

        #region Retrieving Details with the Selected Doctor ID (AssignDoctorToPatient.aspx)
        /// <summary>
        /////Binding the Grid View with the Drop down selected value (Doctors ID)
        /// </summary>
        /// <param name="index"></param>
        /// <returns>Data Set</returns>
        public DataSet SelectedIDDetails(string index)
        {
            DataSet condition = dataobj.SelectedDoctorIdDetails(index);
            return condition;
        }
        #endregion Retrieving Details with the Selected Doctor ID (AssignDoctorToPatient.aspx)

    }
}
