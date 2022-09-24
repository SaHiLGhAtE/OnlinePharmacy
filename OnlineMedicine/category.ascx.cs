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
    public partial class category : System.Web.UI.UserControl
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
            string strcon = WebConfigurationManager.ConnectionStrings["OnlineDbCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from category order by catid desc", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DataList1.DataSource = ds.Tables["t1"];
            DataList1.DataBind();
            con.Close();
            ViewState["v1"] = ds;
        }
    }
}