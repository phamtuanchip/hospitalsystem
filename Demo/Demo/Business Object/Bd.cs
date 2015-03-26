using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Demo.DAL;

namespace Demo.Business_Object
{
    /// <summary>
    /// This class is the Business Object for Bed Object in the Hospital System
    /// </summary>
    public class Bd
    {
        DataObject dataobj = new DataObject();

        public Bd()
        { }

        #region Retrieving Bed ID's (AssignDoctorToPatient.aspx)
        /// <summary>
        /// This function is used for getting all the Bed Id's
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet GetBedId()
        {
            DataSet condition = dataobj.BedId();
            return condition;
        }
        #endregion Retrieving Bed ID's (AssignDoctorToPatient.aspx)
    }
}
