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
    public partial class Category : System.Web.UI.Page
    {
        string fileTitle11;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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


        protected void FillGridview()
        {
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from category order by catid desc", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
            ViewState["v1"] = ds;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string catid = GridView1.DataKeys[e.RowIndex].Values["catid"].ToString();
            string conn;
            conn = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection ocon = new SqlConnection(conn);
            ocon.Open();
            SqlCommand cmd = new SqlCommand("delete from category where catid=@catid", ocon);
            cmd.Parameters.AddWithValue("@catid", catid);
            cmd.ExecuteNonQuery();
            lblmsg.ForeColor = Color.White;
            lblmsg.BackColor = Color.Black;
            lblmsg.Text = "Deleted record successfully";
            ocon.Close();
            FillGridview();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            uploadimage1();
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into category (cname,cimage) values(@cname,@cimage)", con);
            cmd.Parameters.AddWithValue("cname", txtcname.Text);
            cmd.Parameters.AddWithValue("cimage", "~/Styles/" + fileTitle11);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Added record successfully";
            con.Close();
            FillGridview();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["v1"];
            DataTable myydatatable = mydataset.Tables["t1"];
            GridView1.DataSource = myydatatable;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}