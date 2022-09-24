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

namespace OnlineMedicine.Admin
{
    public partial class MedicineDetails : System.Web.UI.Page
    {
        string fileTitle11;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillBooksCategory();
                FillGridview();
            }
        }
        protected void uploadimage1()
        {
            string fileName = FileUpload1.PostedFile.FileName;
            string fileExtension = System.IO.Path.GetExtension(fileName);
            string fileMimeType = FileUpload1.PostedFile.ContentType;
            int fileSizeInKb = FileUpload1.PostedFile.ContentLength / 1024;
            fileTitle11 = FileUpload1.FileName;
            string[] MatchExtension = { ".jpg", ".jpeg", ".png", ".gif" };
            string[] MatchMimeType = { "image/jpeg", "image/gif", "image/png" };
            if (FileUpload1.HasFile)
            {
                if (MatchExtension.Contains(fileExtension) || MatchMimeType.Contains(fileMimeType))
                {
                    if (fileSizeInKb <= 1024)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Styles/" + fileTitle11));
                    }
                    else
                    {
                        Response.Write("file Size greater than 1 Mb");
                    }

                }
                else
                {
                    Response.Write("Please Upload an .jpg,.jpeg,.gif or .png image");
                }
            }
            else
            {
                Response.Write("please Upload an image");
            }
        }

        protected void FillBooksCategory()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from category order by catid desc", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DropDownList1.DataSource = ds.Tables["t1"];
            DropDownList1.DataTextField = "cname";
            DropDownList1.DataValueField = "catid";
            DropDownList1.DataBind();
            con.Close();

        }
        protected void FillGridview()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from medicinedetails a,Category b where a.catid=b.catid", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
            ViewState["v1"] = ds;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string mid = GridView1.DataKeys[e.RowIndex].Values["mid"].ToString();
            string conn;
            conn = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection ocon = new SqlConnection(conn);
            ocon.Open();
            SqlCommand cmd = new SqlCommand("delete from medicinedetails where mid=@mid", ocon);
            cmd.Parameters.AddWithValue("@mid", mid);
            cmd.ExecuteNonQuery();
            lblmsg.ForeColor = Color.White;
            lblmsg.BackColor = Color.Black;
            lblmsg.Text = "Deleted record successfully";
            ocon.Close();
            FillGridview();
        }

        protected void BtnSub_Click(object sender, EventArgs e)
        {
            uploadimage1();
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into medicinedetails (catid,title,details,price,image1) values(@catid,@title,@details,@price,@image1)", con);
            cmd.Parameters.AddWithValue("catid", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("title", txttitle.Text);
            cmd.Parameters.AddWithValue("details", txtdetails.Text);
            cmd.Parameters.AddWithValue("price", txtprice.Text);
            cmd.Parameters.AddWithValue("image1", "~/Styles/" + fileTitle11);


            cmd.ExecuteNonQuery();
            lblmsg.Text = "Added record successfully";
            con.Close();
            FillGridview();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}