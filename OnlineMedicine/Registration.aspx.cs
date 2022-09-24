using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Security;

using System.Web.Security;
using System.Net.Mail;
using System.Net;
namespace OnlineMedicine
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string newRoleName = "Customer";
            Roles.AddUserToRole(CreateUserWizard1.UserName, newRoleName);

            AddInRegistration();
          //  SendEmail();
        }
        protected void AddInRegistration()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Registration (Fname,Mname,Lname,Address,Pincode,ContactNo,Username,email) values(@Fname,@Mname,@Lname,@Address,@Pincode,@ContactNo,@Username,@email)", con);
            cmd.Parameters.AddWithValue("Fname", txtFname.Text);
            cmd.Parameters.AddWithValue("Mname", txtMname.Text);
            cmd.Parameters.AddWithValue("Lname", txtLname.Text);
            cmd.Parameters.AddWithValue("Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("Pincode", txtpin.Text);
            cmd.Parameters.AddWithValue("ContactNo", txtcontact.Text);
            cmd.Parameters.AddWithValue("Username", CreateUserWizard1.UserName.ToString());
            cmd.Parameters.AddWithValue("email", CreateUserWizard1.Email.ToString());
            cmd.ExecuteNonQuery();

        }
        protected void SendEmail()
        {
            string mEmail = CreateUserWizard1.Email.ToString();
            string mUser = CreateUserWizard1.UserName.ToString();
            string mpass = CreateUserWizard1.Password.ToString();
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("onlinemedical29@gmail.com");
            msg.To.Add(mEmail);
            msg.Subject = "Registration has done for medicine Shop as Customer";
            msg.Body = "Welcome " + txtFname.Text + " </br>" + ", Your Username is " + mUser.ToString() + " and Password is " + mpass;
            msg.IsBodyHtml = true;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "onlinemedical29@gmail.com";
            ntwd.Password = "Simran@1234";
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
        }

    }
}