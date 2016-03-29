using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //This provides all the classes of SQL
using System.Configuration; //contains the types that provide the programming model for handling configuration data.
using System.Data; //enables you to manage data from multiple data sources.



namespace FinalYearProject
{
    public partial class paitentregistrationview : System.Web.UI.Page
    {
        int tempp = 0; //variable temp declared for registration
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //connects registrtion form with database
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["PaitentRegistrationConnectionString"].ConnectionString);

                //Opens a database connection with the property settings specified by the ConnectionString
                connn.Open();

                //This is a query selects count fron table and checks wheather new username is in the database or not
                string checkuserr = "select count(*) from Table3 where paitentemail=@paitentemail";

                //passing string checkuser here and conn declaring SQL command
                SqlCommand comm = new SqlCommand(checkuserr, connn);

                //Adds username to database
                comm.Parameters.Add("@paitentemail", SqlDbType.NChar, 20).Value = TextBoxpemail.Text;

                // int temp = Convert.ToInt32(com.ExecuteScalar());
                //temp gets converted to string
                tempp = Convert.ToInt32(comm.ExecuteScalar().ToString());

                // conn.Close();

                //if statement if equals 1 will say user exists
                if (tempp == 1)
                {
                    Response.Write(" User already Exists ");
                }
                //closes Query
                connn.Close();
            }
        }







        protected void Button1_Click(object sender, EventArgs e)
        {
            // if statement for try
            if (tempp == 0)
            {
                try
                {
                    //Generating Guid, everytime a user clicks submit it will create a new unique ID and save it as a new GUID
                    Guid newGuid = Guid.NewGuid();

                    //connects registrtion form with database
                    SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["PaitentRegistrationConnectionString"].ConnectionString);

                    connn.Open();

                    //inserts query into table all the values stated in the query
                    string insertQuery = "insert into Table3 (ID,paitentgender,paitenttitle,paitentfirstname,paitentlastname,paitentdob,paitentcontactnumber,paitentemail,paitentmedicationtaking,paitentothermedication,paitentfirstlineofaddress,paitenttown,paitentcity,paitentpostcode) values (@ID, @pgen, @ptit, @pfn ,@pln, @pdob, @pcn, @pemail, @pmtaking, @pomedicationtaking, @pfloa, @ptown, @pcity, @ppc)";
                      
                    SqlCommand commm = new SqlCommand(insertQuery, connn);

                    //all values to add in DB
                    commm.Parameters.AddWithValue("@ID", newGuid.ToString());
                    commm.Parameters.AddWithValue("@pgen", DropDownListpgender.SelectedItem.ToString());
                    commm.Parameters.AddWithValue("@ptit", DropDownListptitle.SelectedItem.ToString());
                    commm.Parameters.AddWithValue("@pfn", TextBoxpfirstname.Text);
                    commm.Parameters.AddWithValue("@pln", TextBoxpsecondname.Text);
                    commm.Parameters.AddWithValue("@pdob", TextBoxpdob.Text);
                    commm.Parameters.AddWithValue("@pcn", TextBoxpcontactnumber.Text);
                    commm.Parameters.AddWithValue("@pemail", TextBoxpemail.Text);
                    commm.Parameters.AddWithValue("@pmtaking", DropDownpmedication.SelectedItem.ToString());
                    commm.Parameters.AddWithValue("@pomedicationtaking", TextBoxpothermedication.Text);
                    commm.Parameters.AddWithValue("@pfloa", TextBoxpfirstlineaddress.Text);
                    commm.Parameters.AddWithValue("@ptown", TextBoxptown.Text);
                    commm.Parameters.AddWithValue("@pcity", TextBoxpcity.Text);
                    commm.Parameters.AddWithValue("@ppc", TextBoxppostalcode.Text);

                    commm.ExecuteNonQuery();

                    //re directs user to log in once registerd
                    Response.Redirect("successfullpaitentregistrationpage.aspx");
                    

                    connn.Close();
                }

                catch (Exception ex)
                {

                    Response.Write("Error:" + ex.ToString());
                }
            }
        }
    }
}