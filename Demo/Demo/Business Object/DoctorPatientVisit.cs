using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Demo.DAL;

namespace Demo.Business_Object
{
    /// <summary>
    /// This class is used for Assigning the Doctor to the Patient (For making Doctors to available to Patients)
    /// </summary>
    public class DoctorPatientVisit
    {
        DataObject dataobj = new DataObject();

        #region Assigning Doctor to the Patient (AssignDoctorToPatient.aspx)
        /// <summary>
        /// //Assigning the doctor to the patient with all the details Admin has provided
        /// </summary>
        /// <param name="DoctorId">DoctorId</param>
        /// <param name="PatientId">PatientId</param>
        /// <param name="PatientType">PatientType</param>
        /// <param name="enalbledBedId">enalbledBedId</param>
        /// <param name="VisitDate">VisitDate</param>
        /// <param name="Symptopms">Symptopms</param>
        /// <param name="Disease">Disease</param>
        /// <param name="Treatment">Treatment</param>
        /// <returns>DataSet</returns>
        public DataSet AssignDoctorToPatient(string DoctorId, string PatientId, int PatientType, string enalbledBedId, string VisitDate, string Symptopms, string Disease, string Treatment)
        {
            DataSet condition = dataobj.AssignDoctorToPatient(DoctorId, PatientId, PatientType, enalbledBedId, VisitDate, Symptopms, Disease, Treatment); ;
            return condition;
        }
        #endregion Assigning Doctor to the Patient (AssignDoctorToPatient.aspx)
    }
}
