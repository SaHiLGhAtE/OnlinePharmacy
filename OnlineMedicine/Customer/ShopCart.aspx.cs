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
    public partial class ShopCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGV();
                CalGrandTototal();
            }
        }
        protected void FillGV()
        {
             string un = Session["un"].ToString();
             string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
             SqlConnection con = new SqlConnection(strcon);
             con.Open();
             SqlDataAdapter da = new SqlDataAdapter("select * from shopcart a, Category b where a.catid=b.catid and username='" + un + "'", con);

             DataSet ds = new DataSet();
             da.Fill(ds, "t1");
             GridView1.DataSource = ds.Tables["t1"];
             GridView1.DataBind();
             con.Close();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillGV();
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
          
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillGV();
        }

        protected void CalGrandTototal()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
           string currentuser1 = User.Identity.Name.ToString();
           SqlCommand cmd = new SqlCommand("Select sum (tot) from ShopCart where UserName='" + currentuser1 + "'", con);
           int cnt = (int)cmd.ExecuteScalar();
            lblTot.Text = cnt.ToString();
            con.Close();
            Session["tot"] = cnt.ToString();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string sid = GridView1.DataKeys[e.RowIndex].Values["sid"].ToString();

            TextBox inqty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            Label np = (Label)GridView1.Rows[e.RowIndex].FindControl("Label6");
            int NewTot = Convert.ToInt32(inqty.Text) * Convert.ToInt32(np.Text);
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
          

           SqlCommand cmd = new SqlCommand("Update ShopCart set Qty=@qty, tot=@tot where sid=@sid", con);
            cmd.Parameters.AddWithValue("@qty", inqty.Text);
            cmd.Parameters.AddWithValue("@tot", NewTot);
            cmd.Parameters.AddWithValue("@sid", sid);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            FillGV();
            CalGrandTototal();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/CheckOut.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string sid = GridView1.DataKeys[e.RowIndex].Values["sid"].ToString();


            TextBox inqty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");


            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

           

            SqlCommand cmd = new SqlCommand("Delete from ShopCart where sid=" + sid, con);
            int res = cmd.ExecuteNonQuery();


            GridView1.EditIndex = -1;

            cmd.ExecuteNonQuery();


            con.Close();
            CalGrandTototal();
            FillGV();
        }
       
    }
}