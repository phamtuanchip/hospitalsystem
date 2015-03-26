using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace Encryptions
{
    class Encrypt
    {
        public string EncryptData(string stringtoEncrypt, string Password)
        {
            // We are now going to create an instance of the Rihndael class.
            RijndaelManaged RijndaelCipher = new RijndaelManaged();

            // First we need to turn the input strings into a byte array.
            byte[] PlainText = System.Text.Encoding.Unicode.GetBytes(stringtoEncrypt);

            // We are using salt to make it harder to guess our key
            // using a dictionary attack.
            byte[] Salt = Encoding.ASCII.GetBytes(Password.Length.ToString());

            // The (Secret Key) will be generated from the specified password and salt.
            PasswordDeriveBytes SecretKey = new PasswordDeriveBytes(Password, Salt);

            // Create a encryptor from the existing SecretKey bytes.
            // We use 32 bytes for the secret key
            // (the default Rijndael key length is 256 bit = 32 bytes) and
            // then 16 bytes for the IV (initialization vector),
            // (the default Rijndael IV length is 128 bit = 16 bytes)
            ICryptoTransform Encryptor = RijndaelCipher.CreateEncryptor(SecretKey.GetBytes(32), SecretKey.GetBytes(16));

            // Create a MemoryStream that is going to hold the encrypted bytes
            MemoryStream memoryStream = new MemoryStream();

            // Create a CryptoStream through which we are going to be processing our data.
            // CryptoStreamMode.Write means that we are going to be writing data
            // to the stream and the output will be written in the MemoryStream
            // we have provided. (always use write mode for encryption)
            CryptoStream cryptoStream = new CryptoStream(memoryStream, Encryptor, CryptoStreamMode.Write);

            // Start the encryption process.
            cryptoStream.Write(PlainText, 0, PlainText.Length);

            // Finish encrypting.
            cryptoStream.FlushFinalBlock();

            // Convert our encrypted data from a memoryStream into a byte array.
            byte[] CipherBytes = memoryStream.ToArray();

            // Close both streams.
            memoryStream.Close();
            cryptoStream.Close();

            // Convert encrypted data into a base64-encoded string.
            // A common mistake would be to use an Encoding class for that.
            // It does not work, because not all byte values can be
            // represented by characters. We are going to be using Base64 encoding
            // That is designed exactly for what we are trying to do.

            string EncryptedData = Convert.ToBase64String(CipherBytes);

            // Return encrypted string.
            return EncryptedData;
        }
    }
}
