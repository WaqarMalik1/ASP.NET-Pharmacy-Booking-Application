using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //This provides all the classes of SQL
using System.Configuration; //contains the types that provide the programming model for handling configuration data.
using System.Data; //enables you to manage data from multiple data sources.

namespace FinalYearProject //my namespace project name
{
  public partial class Registration : System.Web.UI.Page
  {
   int temp = 0; //variable temp declared for registration
   protected void Page_Load(object sender, EventArgs e)
   {
     if (IsPostBack)
       {
     //connects registrtion form with database
     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

     //Opens a database connection with the property settings specified by the ConnectionString
     conn.Open();

     //This is a query selects count fron table and checks wheather new username is in the database or not
     string checkuser = "select count(*) from [Table] where UserName=@UserName";
                
      //passing string checkuser here and conn declaring SQL command
      SqlCommand com = new SqlCommand(checkuser, conn);

     //Adds username to database
     com.Parameters.Add("@UserName", SqlDbType.NChar, 20).Value = TextBoxUN.Text;
                
     // int temp = Convert.ToInt32(com.ExecuteScalar());
     //temp gets converted to string
     temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               
     // conn.Close();

     //if statement if equals 1 will say user exists
     if (temp == 1)
     {
        Response.Write(" User already Exists ");
     }
     //closes Query
     conn.Close();
            }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // if statement for try
            if (temp == 0)
            {
                try
                {
                    //Generating Guid, everytime a user clicks submit it will create a new unique ID and save it as a new GUID
                    Guid newGuid = Guid.NewGuid();

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

                    conn.Open();

                    //inserts query into table all the values stated in the query
                    string insertQuery = "insert into [Table] (ID,Gender,Title,FirstName,LastName,YourAge,FirstLineOfAddress,Town,County,PostCode,ContactNumber,UserName,Email,Password) values (@ID, @gender, @title, @fname ,@lname, @yage, @floa, @town, @county, @pcode, @cnum, @uname, @email, @password)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);

                    //all values to add in DB
                    com.Parameters.AddWithValue("@ID", newGuid.ToString());
                    com.Parameters.AddWithValue("@gender", DropDownListGender.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@title", DropDownListTitle.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@fname", TextBoxFN.Text);
                    com.Parameters.AddWithValue("@lname", TextBoxLN.Text);
                    com.Parameters.AddWithValue("@yage", TextBoxYA.Text);
                    com.Parameters.AddWithValue("@floa", TextBoxFLOA.Text);
                    com.Parameters.AddWithValue("@town", TextBoxTOWN.Text);
                    com.Parameters.AddWithValue("@county", TextBoxCOUNTY.Text);
                    com.Parameters.AddWithValue("@pcode", TextBoxPC.Text);
                    com.Parameters.AddWithValue("@cnum", TextBoxCN.Text);
                    com.Parameters.AddWithValue("@uname", TextBoxUN.Text);
                    com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    com.Parameters.AddWithValue("@password", EncryptPassword(TextBoxPass.Text));

                    com.ExecuteNonQuery();
                    
                    //re directs user to log in once registerd
                    Response.Redirect("successfullregistration.aspx");
                    Response.Write(" Registration is successfull ");

                    conn.Close();
                   }

                catch (Exception ex)
                {

                    Response.Write("Error:" + ex.ToString());
             }
            }
        }

        private object EncryptPassword(string password)
        {
            System.Security.Cryptography.SHA1 sha = System.Security.Cryptography.SHA1.Create();
            string hashed = System.Convert.ToBase64String(sha.ComputeHash(System.Text.UnicodeEncoding.Unicode.GetBytes(password)));
            return hashed.Length > 49 ? hashed.Substring(0, 49) : hashed; 
        }
    }
}