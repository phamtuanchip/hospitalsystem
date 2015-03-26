using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Demo.DAL;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text;

namespace Demo.Business_Object
{
    /// <summary>
    /// This class is used for Login Credentials handling and Patient Functioning
    /// </summary>
    public class User
    {
        DataObject dataobj = new DataObject();

        /// <summary>
        /// Auto Implemented Properties for Name
        /// </summary>
        public String Name
        {
            get; set;
        }

        /// <summary>
        /// Auto Implemented Properties for Password
        /// </summary>
        public String Password
        {
            get; set;
        }

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Password"></param>
        public User(String Name, String Password)
        {
            this.Name = Name;
            this.Password = Password;
        }

        public User()
        {
        }

        #region Validate Booking Staff Users
        /// <summary>
        /// This function is used for Validating the Booking Staff with the encrypted Password
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public int ValidateUser(String Username, String Password)
        {
            int condition;

            condition = dataobj.LoginUser(Username,Password);
            return condition;
        }
        #endregion Validate Users

        #region Validate Admin Users
        /// <summary>
        /// This function is used for Validating Admin with the encrypted Password
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public int ValidateAdminUser(String Username, String Password)
        {
            int condition;

            condition = dataobj.LoginAdminUser(Username, Password);
            return condition;
        }
        #endregion Validate Users

    }
}
