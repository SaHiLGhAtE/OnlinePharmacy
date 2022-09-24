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

namespace OnlineMedicine.Customer
{
    public partial class DetailsUs : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDataList();
                CountItems();
            }
        }

        protected void fillDataList()
        {
            string catid = Request.QueryString["catid"];
            if (catid != null)
            {
                string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from MedicineDetails where catid=" + catid, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "t1");
                DataList1.DataSource = ds.Tables["t1"];
                DataList1.DataBind();
                con.Close();
            }
            else
            {
                string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from MedicineDetails where catid=4", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "t1");
                DataList1.DataSource = ds.Tables["t1"];
                DataList1.DataBind();
                con.Close();
            }
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Label title = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
            Label price = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label3");
            HiddenField img = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField1");
            LinkButton mid = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            HiddenField catid = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField2");
            string BtnArgument = mid.CommandArgument.ToString();
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into shopcart(catid,mid,title,Image1,Qty,Price,tot,username) values (@catid,@mid,@title,@Image1,@Qty,@Price,@tot,@username)", con);
            cmd.Parameters.AddWithValue("@catid", catid.Value.ToString());
            cmd.Parameters.AddWithValue("@mid", BtnArgument);
            cmd.Parameters.AddWithValue("@title", title.Text);
            cmd.Parameters.AddWithValue("@Image1", img.Value.ToString());
            cmd.Parameters.AddWithValue("@Qty", 1);
            
            cmd.Parameters.AddWithValue("@Price", price.Text);
            cmd.Parameters.AddWithValue("@tot", price.Text);
            cmd.Parameters.AddWithValue("@username", Session["un"].ToString());
            cmd.ExecuteNonQuery();

            con.Close();
            CountItems();
        }

        protected void CountItems()
        {
            string un = Session["un"].ToString();
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from shopcart where username='" + un + "'", con);
            int cnt = (int)cmd.ExecuteScalar();
            lblItems.Text = cnt.ToString();
            con.Close();
        }
    }
}