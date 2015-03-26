using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Demo.DAL
{
    public class DataObject
    {
        private const String connString = "server=localhost;database=Assignment2;Integrated Security=SSPI";
        SqlDataReader reader = null;
        SqlConnection conn = new SqlConnection(connString);

        #region Login Credentials for Booking Staff (Login.aspx)
        /// <summary>
        /// This function is used for Validating the Booking Staff with the encrypted Password
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public int LoginUser(String Username, String Password)
        {
            using (SqlCommand command = new SqlCommand("user_Logins", conn))
            {
                conn.Open();

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = Username;
                command.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = Password;

                reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    return 0;
                }
                else
                {
                    return 1;
                }

            }
        }
        #endregion Login Credentials for Booking Staff (Login.aspx)

        #region Login Credentials for Admin (Login.aspx)
        /// <summary>
        /// This function is used for Validating Admin with the encrypted Password
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public int LoginAdminUser(String Username, String Password)
        {
            using (SqlCommand command = new SqlCommand("admin_user_Logins", conn))
            {
                conn.Open();

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = Username;
                command.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = Password;

                reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
        }
        #endregion Login Credentials for Admin (Login.aspx)


        #region Binding the Drop Down List with the Visted Patient Names by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Names who had visited for their treatment
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryNames()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //calling the Procedure
                SqlCommand command = new SqlCommand("Patient_Visits_Filter_Name_DropDown", conn);
                command.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(command);

                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
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
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //Calling the Procedure
                SqlCommand command = new SqlCommand("Patient_Visits_Filter_Name_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;

                //Passing in the Parameters
                command.Parameters.Add("@name", SqlDbType.VarChar).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding the Grid View with the Selected Drop Down Item from the List by ADO.NET (PatientVisits.aspx)

        #region Binding the Drop Down List with the Patient Visits By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Visits Dates who had visited for their treatment
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryVisitDates()
        {
            //Calling to the Stored Procedure
            SqlCommand command = new SqlCommand("Patient_Visits_Filter_Name_DropDown", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Binding the Drop Down List with the Patient Visits (PatientVisits.aspx)

        #region Binding Grid View with the selected VisitDate By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the selected value from the Drop Down List 
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public DataSet SelectedVisitDateDetails(string index)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //Calling the Procedure
                SqlCommand command = new SqlCommand("Patient_Visit_Filter_VisitDate_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;

                //Passing the Selected Parameter
                command.Parameters.Add("@visitdate", SqlDbType.DateTime).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding Grid View with the selected VisitDate (PatientVisits.aspx)

        #region Binding the Drop Down List with the Patient Discharge Dates By ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Drop Down List with the Patient Discharge Dates who had visited for their treatment
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryDischargeDates()
        {
            //Calling the Procedure
            SqlCommand command = new SqlCommand("Patient_Visits_Filter_Name_DropDown", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Binding the Drop Down List with the Patient Discharge Dates By ADO.NET (PatientVisits.aspx)

        #region Binding the Grid View with selected Discharged Date by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the selected Discharged Date from the Drop Down List
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public DataSet SelectedDischargeDateDetails(String index)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //Calling the Procedure
                SqlCommand command = new SqlCommand("Patient_Vist_Filter_DischargeDate_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;

                //Passing in the Selected Parameter to Procedure
                command.Parameters.Add("@discharge", SqlDbType.DateTime).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding the Grid View with selected Discharged Date by ADO.NET (PatientVisits.aspx)

        #region Binding the Grid View with the Selected Options by ADO.NET (PatientVisits.aspx)
        /// <summary>
        /// //Binding the Grid View with the Selected Options from the Drop Down List
        /// </summary>
        /// <param name="name">Patient Name</param>
        /// <param name="visit">Patient Visit Date</param>
        /// <param name="discharge">Patient Discharged Date</param>
        /// <returns>DataSet</returns>
        public DataSet SelectedDetails(String name, string visit, string discharge)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //Calling the Stored Procedure
                SqlCommand command = new SqlCommand("Patient_Visit_Filter_List", conn);
                command.CommandType = CommandType.StoredProcedure;

                //Passing in the Parameters
                command.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                command.Parameters.Add("@visit", SqlDbType.DateTime).Value = visit;
                command.Parameters.Add("@discharge", SqlDbType.DateTime).Value = discharge;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding the Grid View with the Selected Options by ADO.NET (PatientVisits.aspx)


        #region Registered Patients by ADO.NET (PatientRegistration.aspx)
        /// <summary>
        /// //Binding the Grid View with all the details of the Patients who are Registered with the System
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryRegistration()
        {
            //Calling the Stored Procedure
            SqlCommand command = new SqlCommand("Patient_Registration", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Registered Patients by ADO.NET (PatientRegistration.aspx)

        #region Updating the Patient Record by ADO.NET (PatientRegistration.aspx)
        /// <summary>
        /// //Updating the Grid view and the Database with the current wriiten values/ Parameters
        /// </summary>
        /// <param name="id"></param>
        /// <param name="address"></param>
        /// <param name="dob"></param>
        /// <param name="phone"></param>
        /// <param name="ephone"></param>
        public void CategoryRegistrationUpdate(int id, String address, DateTime dob, int phone, int ephone)
        {
            //Calling the Procedure
            using (SqlCommand cmd = new SqlCommand("update_patient_Registration", conn))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                
                //Passing in the Parameters to the Procedure
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = dob;
                cmd.Parameters.Add("@phone", SqlDbType.Int).Value = phone;
                cmd.Parameters.Add("@ephone", SqlDbType.Int).Value = ephone;

                cmd.ExecuteNonQuery();
            }
        }
        #endregion Updating the Patient Record by ADO.NET (PatientRegistration.aspx)

        #region Insert New Patient Registration (PatientRegistration.aspx)
        /// <summary>
        /// //Trying to Insert the Record to the Patient Table for new Entry
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <param name="address"></param>
        /// <param name="dob"></param>
        /// <param name="phone"></param>
        /// <param name="emergency"></param>
        /// <param name="registration"></param>
        public void InsertPatientRecord(int id, string name, string address, DateTime dob, int phone, int emergency, DateTime registration)
        {
            //Calling the Procedure
            using (SqlCommand cmd = new SqlCommand("Insert_patient_record", conn))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;

                //Passing on the Parameters for the New Patient
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = dob;
                cmd.Parameters.Add("@phone", SqlDbType.Int).Value = phone;
                cmd.Parameters.Add("@emergency", SqlDbType.Int).Value = emergency;
                cmd.Parameters.Add("@registration", SqlDbType.DateTime).Value = registration;
                cmd.ExecuteNonQuery();
            }
        }
        #endregion Insert New Patient Registration (PatientRegistration.aspx)


        #region DOCTOR Information (EditDoctor.aspx)
        /// <summary>
        /// This DataObject function is used for retrieving all 
        /// the Doctors Information from the database using Stored Procedures
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryDoctor()
        {
            SqlCommand command = new SqlCommand("Doctors_List", conn);
            command.CommandType = CommandType.StoredProcedure;

            //SQLAdatpter for running the stored procedure
            SqlDataAdapter da = new SqlDataAdapter(command);

            //Fiiling in the Dataset with the records and returning it to the Business Object
            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion DOCTOR Information (EditDoctor.aspx)

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
            //Using stored Procedures for Updating the Doctor Information
            using (SqlCommand cmd = new SqlCommand("update_Doctor_List", conn))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                //Adding the parameters to the command
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@phone", SqlDbType.Int).Value = phone;

                cmd.ExecuteNonQuery();
            }
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
        public void InsertDoctorRecord(int id, string name, string address, int phone)
        {
            //Using stored Procedures for Updating the Doctor Information
            using (SqlCommand cmd = new SqlCommand("Insert_doctor_record", conn))
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                //Passing in the parameters to the Stored Procedures
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@phone", SqlDbType.Int).Value = phone;

                cmd.ExecuteNonQuery();
            }
        }
        #endregion Insert DOCTOR record (EditDoctor.aspx)

        
        #region Retrieving DOCTOR ID (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This Function is used for retrieving all the Doctors ID from the DataObject
        /// </summary>
        /// <returns>Data Set</returns>
        public DataSet CategoryHistory()
        {
            SqlCommand command = new SqlCommand("Doctors_History", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            //Filling the DataSet with the Doctor_History Information
            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Retrieving DOCTOR ID (AssignDoctorToPatient.aspx)

        #region Retrieving Details with the Selected Doctor ID (AssignDoctorToPatient.aspx)
        /// <summary>
        /////Binding the Grid View with the Drop down selected value (Doctors ID)
        /// </summary>
        /// <param name="index"></param>
        /// <returns>Data Set</returns>
        public DataSet SelectedDoctorIdDetails(string index)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand("Doctor_History_Filter_ID_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;

                //Passing in the Doctor ID to the Stored Procedure
                command.Parameters.Add("@id", SqlDbType.Int).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                //Filling in the DataSet
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Retrieving Details with the Selected Doctor ID (AssignDoctorToPatient.aspx)

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
        //Assigning a Doctor to a Patient
        public DataSet AssignDoctorToPatient(string DoctorId, string PatientId, int PatientType, string enalbledBedId, string VisitDate, string Symptopms, string Disease, string Treatment)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand("Assign_Doctor_To_Patient", conn);
                command.CommandType = CommandType.StoredProcedure;
                //Passing in the Parameters in to the Stored Procedures
                command.Parameters.Add("@doctorid", SqlDbType.VarChar).Value = DoctorId;
                command.Parameters.Add("@patientid", SqlDbType.Int).Value = PatientId;
                command.Parameters.Add("@patienttype", SqlDbType.Int).Value = PatientType;
                command.Parameters.Add("@bedid", SqlDbType.VarChar).Value = enalbledBedId;
                command.Parameters.Add("@visitdate", SqlDbType.Date).Value = VisitDate;
                command.Parameters.Add("@symptoms", SqlDbType.VarChar).Value = Symptopms;
                command.Parameters.Add("@disease", SqlDbType.VarChar).Value = Disease;
                command.Parameters.Add("@treatment", SqlDbType.VarChar).Value = Treatment;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Assigning Doctor to the Patient (AssignDoctorToPatient.aspx)

        #region Retrieving Patient ID's (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This function is used for getting the Patient Id's which are not allocated with Doctors
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet PatientId()
        {
            //Calling the Stored Procedures
            SqlCommand command = new SqlCommand("Get_Patient_Id", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Retrieving Patient ID's (AssignDoctorToPatient.aspx)

        #region Retrieving Bed ID's (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This function is used for getting all the Bed Id's
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet BedId()
        {
            //Calling the Stored Procedure
            SqlCommand command = new SqlCommand("Get_Bed_Id", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Retrieving Bed ID's (AssignDoctorToPatient.aspx)


        #region Binding the available Registration Dates to the Drop Down (PatientList.aspx)
        /// <summary>
        /// //This function is used for Binding the available Registration Dates to the Drop Down
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet CategoryDischargeList()
        {
            //calling the Proceduire
            SqlCommand command = new SqlCommand("Patient_List_Filter_Name_DropDown", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
        }
        #endregion Binding the available Registration Dates to the Drop Down (PatientList.aspx)

        #region Filtering Patient Details upon Selected Values in Drop Down List by ADO.NET(PatientList.aspx)
        /// <summary>
        /// This function is used for the Selecting the Patients depending upon the selected values from the Drop Down List.
        /// </summary>
        /// <param name="name">Patient Name</param>
        /// <param name="register">Registered Date</param>       
        public DataSet CategorySelectedFilterList(string name, string register)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //Calling the Stored Procedure
                SqlCommand command = new SqlCommand("Patient_List_Filter_Details", conn);
                command.CommandType = CommandType.StoredProcedure;
                
                //Passing the Parameters in the Procedure
                command.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                command.Parameters.Add("@register", SqlDbType.DateTime).Value = register;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
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
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //calling the Procedure
                SqlCommand command = new SqlCommand("Patient_List_Filter_Register_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@registerdate", SqlDbType.DateTime).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding the available Registration Dates to the GridView by ADO.NET(PatientList.aspx)

        #region Binding the available Patients to the Drop Down by ADO.NET(PatientList.aspx)
        /// <summary>
        /// //Binding the available Patients to the Drop Down List
        /// </summary>
        /// <returns></returns>
        public DataSet CategoryNameList()
        {
            //Calling the Stored Procedure
            SqlCommand command = new SqlCommand("Patient_List_Filter_Name_DropDown", conn);
            command.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(command);

            DataSet data = new DataSet();
            da.Fill(data);

            return data;
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
            using (SqlConnection conn = new SqlConnection(connString))
            {
                //calling the Procedure
                SqlCommand command = new SqlCommand("Patient_List_Filter_Name_GridView", conn);
                command.CommandType = CommandType.StoredProcedure;
                //Passing the Parameters
                command.Parameters.Add("@name", SqlDbType.VarChar).Value = index;

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet data = new DataSet();
                da.Fill(data);

                return data;
            }
        }
        #endregion Binding the GridView by the selected value of Drop Down by ADO.NET(PatientList.aspx)

        public void releaseConnection()
        {
            conn.Close();
        }

        public void releaseReader()
        {
            reader.Close();
        }
    }
}
