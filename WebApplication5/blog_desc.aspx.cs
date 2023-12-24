using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication5
{
    public partial class blog_desc : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            cmd.Connection = con;
            cmd.CommandText = "select id,title,short_desc,long_desc,image,cate,FORMAT(created_at,'dd-MMM-yyyy') as created_at from blogs where id='" + id + "'";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
    }
}