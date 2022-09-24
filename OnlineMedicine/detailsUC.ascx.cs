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
namespace OnlineMedicine
{
    public partial class detailsUC : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDataList();
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
                SqlDataAdapter da = new SqlDataAdapter("select * from medicinedetails where catid=" + catid, con);
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
                SqlDataAdapter da = new SqlDataAdapter("select * from medicinedetails where catid=4", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "t1");
                DataList1.DataSource = ds.Tables["t1"];
                DataList1.DataBind();
                con.Close();
            }
        }
    
    }
}