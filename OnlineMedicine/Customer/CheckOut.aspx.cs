using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace OnlineMedicine.Customer
{
    public partial class CheckOut : System.Web.UI.Page
    {
        int m1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SearchCustomerData();
                MaxCode();
                lblamt.Text = Session["tot"].ToString();
            }
        }
        protected void MaxCode()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Max(ordercode) from order1", con);
           int m2 = (int)cmd.ExecuteScalar()+1;
           HiddenField1.Value = m2.ToString();
            con.Close();
        }
        protected void SearchCustomerData()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from registration", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if ((r1["username"].ToString()).ToUpper() == (User.Identity.Name.ToString()).ToUpper())
                {
                    txtaddress.Text = r1["address"].ToString();
                    txtfn.Text = r1["fname"].ToString();
                    txtmn.Text = r1["mname"].ToString();
                    txtln.Text = r1["lname"].ToString();
                    txtpin.Text = r1["pincode"].ToString();
                    txtcontact.Text = r1["contactno"].ToString();
                    txtemail.Text = r1["email"].ToString();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddInOrder1();
            AddInOrderDEtails();
            ClearShopcart();
            Session["oc"] = HiddenField1.Value.ToString();
           // SendEmail();
            Response.Redirect("GenerateOrder.aspx");
        }

        protected void AddInOrder1()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into order1 (ordercode,odate,username,address,pincode,contactno,email) values(@ordercode,@odate,@username,@address,@pincode,@contactno,@email)", con);
            cmd.Parameters.AddWithValue("ordercode", HiddenField1.Value);
            cmd.Parameters.AddWithValue("odate", DateTime.Now);
             cmd.Parameters.AddWithValue("username", User.Identity.Name.ToString());
             cmd.Parameters.AddWithValue("address", txtaddress.Text);
             cmd.Parameters.AddWithValue("pincode", txtpin.Text);
             cmd.Parameters.AddWithValue("contactno", txtcontact.Text);
             cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void AddInOrderDEtails()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from shopcart", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if (r1["username"].ToString() == User.Identity.Name.ToString())
                {
                    string mid = r1["mid"].ToString();
                    string catid = r1["catid"].ToString();
                    string title = r1["title"].ToString();
                    string img = r1["image1"].ToString();
                    string price = r1["price"].ToString();
                    string qty = r1["qty"].ToString();
                    string tot = r1["tot"].ToString();
                    SqlCommand cmd = new SqlCommand("insert into orderdetails (ordercode,mid,title,image1,price,qty,tot) values(@ordercode,@mid,@title,@image1,@price,@qty,@tot)", con);
                    cmd.Parameters.AddWithValue("ordercode", HiddenField1.Value);
                    cmd.Parameters.AddWithValue("mid", mid);
                    cmd.Parameters.AddWithValue("title", title);
                    cmd.Parameters.AddWithValue("image1", img);
                    cmd.Parameters.AddWithValue("price", price);
                    cmd.Parameters.AddWithValue("qty", qty);
                    cmd.Parameters.AddWithValue("tot", tot);
                    cmd.ExecuteNonQuery();
                }
            }
            con.Close();
        }
        protected void ClearShopcart()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("delete from shopcart where username=@username", con);
          
            cmd.Parameters.AddWithValue("username", User.Identity.Name.ToString());
           
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void SendEmail()
        {
            string mEmail = txtemail.Text;
          
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("onlinemedical29@gmail.com");
            msg.To.Add(mEmail);
            msg.Subject = "New order placed";
            msg.Body = "yours order code is " + m1 + "<br/>";
             
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