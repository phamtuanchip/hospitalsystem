using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Demo.Business_Object;
using System.Security.Cryptography;
using System.IO;
using System.Text;

namespace Demo
{
    /// <summary>
    /// This class is used for Login Credentials of the Users
    /// </summary>
    public partial class PatientRegistration : System.Web.UI.Page
    {
        /// <summary>
        /// Page Load event for the web page when it loads for the first Time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
            if (Session["user"] != null)
            {
                    lblLogins.Text = "You are already logged in. Logout to login again.";
                    lblUserName.Visible = false;
                    lblPassword.Visible = false;
                    txtPassword.Visible = false;
                    txtUserName.Visible = false;
                    btnAdminLogin.Visible = false;
                    btnLoginUser.Visible = false;    
            }
        }

        /// <summary>
        /// This event is used for cheking the Login Credentials for the Booking Staff
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLoginUser_Click(object sender, EventArgs e)
        {
            User user = new User();

            //Reading the Encrypted Data from the Password Text Box 
            string encryptedpassword = Encrypt(txtPassword.Text);
            
            //Trying to validate the user with the Username and encrypted Password stored on to the database
            int response = user.ValidateUser(txtUserName.Text, encryptedpassword);
            

            //If the credentials are ture the allow the Secure page
            if (response == 0)
            {

                if ((txtUserName.Text).Equals("shekhar") || (txtUserName.Text).Equals("banerjee") || (txtUserName.Text).Equals("admin"))
                {
                    Session["user"] = "admin";
                }
                else
                {
                    Session["user"] = "staff";
                }
                

                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
            }
            else
            {
                lblLoginError.Text = "Login Unsucessful";
            }
        }

        /// <summary>
        /// This event is used for Admin logoin credentials
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            User user = new User();

            //Encrypting the Password of what the user typed in
            string encryptedpassword = Encrypt(txtPassword.Text);

            //Trying to Validate the Admin Login Credentials with the Encrypted Password
            int response = user.ValidateAdminUser(txtUserName.Text, encryptedpassword);

            //if Valid Response to Admin Options Page
            if (response == 0)
            {
                //System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
                Response.Redirect("~\\AdminOpeartions\\AdminOptions.aspx");
            }
            else
            {
                lblLoginError.Text = "Login Unsucessful";
            }
        }

        /// <summary>
        /// This function is used for the Decryption of the Data being Provided
        /// </summary>
        /// <param name="TextToBeDecrypted"></param>
        /// <returns></returns>
            public static string Decrypt(string TextToBeDecrypted)
             {
            RijndaelManaged RijndaelCipher = new RijndaelManaged();

            string Password = "CSC";
            string DecryptedData;

            try
            {
                byte[] EncryptedData = Convert.FromBase64String(TextToBeDecrypted);

                byte[] Salt = Encoding.ASCII.GetBytes(Password.Length.ToString());
                //Making of the key for decryption
                PasswordDeriveBytes SecretKey = new PasswordDeriveBytes(Password, Salt);
                //Creates a symmetric Rijndael decryptor object.
                ICryptoTransform Decryptor = RijndaelCipher.CreateDecryptor(SecretKey.GetBytes(32), SecretKey.GetBytes(16));

                MemoryStream memoryStream = new MemoryStream(EncryptedData);
                //Defines the cryptographics stream for decryption.THe stream contains decrpted data
                CryptoStream cryptoStream = new CryptoStream(memoryStream, Decryptor, CryptoStreamMode.Read);

                byte[] PlainText = new byte[EncryptedData.Length];
                int DecryptedCount = cryptoStream.Read(PlainText, 0, PlainText.Length);
                memoryStream.Close();
                cryptoStream.Close();

                //Converting to string
                DecryptedData = Encoding.Unicode.GetString(PlainText, 0, DecryptedCount);
            }
            catch
            {
                DecryptedData = TextToBeDecrypted;
            }
            return DecryptedData;
        }

        /// <summary>
        /// This function is used for encrypting the Password user typed in.
        /// </summary>
        /// <param name="TextToBeEncrypted"></param>
        /// <returns></returns>
        public static string Encrypt(string TextToBeEncrypted)
        {
            RijndaelManaged RijndaelCipher = new RijndaelManaged();
            string Password = "CSC";
            byte[] PlainText = System.Text.Encoding.Unicode.GetBytes(TextToBeEncrypted);
            byte[] Salt = Encoding.ASCII.GetBytes(Password.Length.ToString());
            PasswordDeriveBytes SecretKey = new PasswordDeriveBytes(Password, Salt);

            //Creates a symmetric encryptor object. 
            ICryptoTransform Encryptor = RijndaelCipher.CreateEncryptor(SecretKey.GetBytes(32), SecretKey.GetBytes(16));
            MemoryStream memoryStream = new MemoryStream();

            //Defines a stream that links data streams to cryptographic transformations
            CryptoStream cryptoStream = new CryptoStream(memoryStream, Encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(PlainText, 0, PlainText.Length);

            //Writes the final state and clears the buffer
            cryptoStream.FlushFinalBlock();
            byte[] CipherBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            string EncryptedData = Convert.ToBase64String(CipherBytes);

            return EncryptedData;
        }
    }
}
