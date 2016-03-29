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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            //connects registrtion form with database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            //Opens a database connection with the property settings specified by the ConnectionString
            conn.Open();

            //This is a query selects count fron table and checks wheather new username is in the database or not
            string checkuser = "select count(*) from [Table] where UserName=@UserName";

            //passing string checkuser here and conn declaring SQL command
            SqlCommand com = new SqlCommand(checkuser, conn);
            
            //com.Parameters.Add("@UserName", SqlDbType.NChar, 20).Value = TextBoxUserName.Text + "'";
            //Adds username to database
            com.Parameters.Add("@UserName", SqlDbType.NChar, 20).Value = TextBoxUserName.Text;

            //temp gets converted to string
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
           // int temp = Convert.ToInt32(com.ExecuteScalar());
            
            //closes query
            conn.Close();

            //if statement declared
            if (temp == 1)
            {
                //opens query connection
                conn.Open();

                //This is a query selects password from table and checks wheather  username is in the database or not
                string checkPasswordQuery = " select password from [Table] where UserName=@UserName";

                //passwordquery string passed here
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

                //gets username parameter adds this in textbox/table
                passComm.Parameters.Add("@UserName", SqlDbType.NVarChar, 20).Value = TextBoxUserName.Text;

                //replaces spaces
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

                //if statement declared
                if (password == TextBoxPassword.Text)
                {

                    //declaring new session
                    Session["New"] = TextBoxUserName.Text;

                    //gives message
                    Response.Write("PASSWORD IS CORRECT");

                    //redirects to page
                    Response.Redirect("afterregistrationpage1.aspx");
                }
                //else statment
                else
                {
                //says this message
                 Response.Write("PASSWORD IS NOT CORRECT");
                }
                }
                     //ese statement
                     else
                    {
                //syays this message
                Response.Write("USERNAME IS NOT CORRECT");
                }
}
    }
} 