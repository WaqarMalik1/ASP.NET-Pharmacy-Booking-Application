using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data; //enables you to manage data from multiple data sources.
using System.Data.SqlClient; //This provides all the classes of SQL
using System.Configuration; //contains the types that provide the programming model for handling configuration data.
using System.Data; //enables you to manage data from multiple data sources.



using System.Net;

using System.Net.Mail;



namespace FinalYearProject
{
    public partial class afterregistrationpage1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                //welcome will display whatever is in the session which is username from the login page
                Label_welcome.Text += Session["New"].ToString();

            }

            else
                //redirects to login
                Response.Redirect("Login.aspx");


            {
                if (IsPostBack)
                {

                    SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn2.Open();

                    string checkfirstname = "select count(*) from Table2 where FirstName=@FirstName";
                    SqlCommand command = new SqlCommand(checkfirstname, conn2);

                    command.Parameters.Add("@FirstName", SqlDbType.NChar, 25).Value = TextBoxPaitentFN.Text;

                    int temptwo = Convert.ToInt32(command.ExecuteScalar().ToString());

                    if (temptwo == 1)
                    {
                        Response.Write("First name already exists");

                    }

                    conn2.Close();

                }

            }
        }



        protected void ButtonCompleteReservation_Click(object sender, EventArgs e)
        {

            try
            {

                MailMessage msg = new MailMessage();


                //waqarmalik000007@gmail.com

                msg.From = new MailAddress(frombox.Text);

                msg.To.Add(tobox.Text);

                msg.Subject = subjectbox.Text;

                msg.Body = bodybox.Text;

                SmtpClient sc = new SmtpClient("smtp.gmail.com");

                sc.Port = 25;

                sc.Credentials = new NetworkCredential(frombox.Text, passwordbox.Text);

                sc.EnableSsl = true;

                sc.Send(msg);

                Response.Write("mail send");

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }




            {
                try
                {

                    Guid nnewGUID = Guid.NewGuid();

                    SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn2.Open();



                    string insertQueryTwo = "insert into Table2 (ID,Title,FirstName,LastName,DateOfBirth,Age,Gender,FirstLineOfAddress,Town,County,PostCode,TelephoneNo,MobileNo,DateOfDeliveryBooking,TimeOfDeliveryBooking,MedicineName1,MedicineName2,MedicineName3,SelectPaymentMethod,CardNumber,CardHolderName,ExpiryDate,SecuirtyNumber) values (@ID, @tit, @fn ,@ln, @dob, @age, @gen, @floadd, @twn, @con, @postc, @teleno, @mobno, @dodb, @todb, @mn1, @mn2, @mn3, @spm, @cardn, @cardhn, @expd, @secnum)";
                    SqlCommand command = new SqlCommand(insertQueryTwo, conn2);

                    //all values to add in DB


                    command.Parameters.AddWithValue("@ID", nnewGUID.ToString());
                    command.Parameters.AddWithValue("@tit", DropDownListPaitentTitle.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@fn", TextBoxPaitentFN.Text);
                    command.Parameters.AddWithValue("@ln", TextBoxPaitentLN.Text);
                    command.Parameters.AddWithValue("@dob", TextBoxPaitentDOB.Text);
                    command.Parameters.AddWithValue("@age", TextBoxPaitentAge.Text);
                    command.Parameters.AddWithValue("@gen", DropDownListPaitentGender.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@floadd", TextBoxFirstLineOfAddress.Text);
                    command.Parameters.AddWithValue("@twn", TextBoxTown.Text);
                    command.Parameters.AddWithValue("@con", TextBoxCounty.Text);
                    command.Parameters.AddWithValue("@postc", TextBoxPostCode.Text);
                    command.Parameters.AddWithValue("@teleno", TextBoxTelephoneNo.Text);
                    command.Parameters.AddWithValue("@mobno", TextBoxMobileNo.Text);
                    command.Parameters.AddWithValue("@dodb", TextBoxDateDelivery.Text);
                    command.Parameters.AddWithValue("@todb", TextBoxTimeBooking.Text);
                    command.Parameters.AddWithValue("@mn1", DropDownListPaitentMedicineNameOne.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@mn2", DropDownListPaitentMedicineNameTwo.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@mn3", DropDownListPaitentMedicineNameThree.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@spm", DropDownListPaymentMethod.SelectedItem.ToString());
                    command.Parameters.AddWithValue("@cardn", TextBoxCardNumber.Text);
                    command.Parameters.AddWithValue("@cardhn", TextBoxCardHolderName.Text);
                    command.Parameters.AddWithValue("@expd", TextBoxExpiryDate.Text);
                    command.Parameters.AddWithValue("@secnum", TextBoxSecurityNumber.Text);

                    command.ExecuteNonQuery();

                    //re directs user to log in once registerd
                    Response.Redirect("successfulldeliverybooking.aspx");
                    Response.Write(" Delivery Booked is successfull ");

                    conn2.Close();

                }

                catch (Exception ex)
                {

                    Response.Write("Error:" + ex.ToString());

                }






            }
        }

        protected void B_Logout_Click(object sender, EventArgs e)
        {

            //if sessionis new equal to null
            Session["New"] = null;

            //redirect users to login
             Response.Redirect("Login.aspx");
            }
        }
    }
