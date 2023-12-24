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
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            cmd.Connection = con;
            cmd.CommandText = "select id,title,short_desc,long_desc,image,cate,FORMAT(getdate(),'dd-MMM-yyyy') as created_at from blogs where id='" + id + "'";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();

        }

        protected void RepeatInformation_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                string id = Request.QueryString["id"];
                string _title = Request.Form["title"];
                string _shortdesc = Request.Form["short_desc"];
                string _longdesc = Request.Form["long_desc"];
                string _image = Request.Form["image"];
                string _cate = Request.Form["cate"];

                SqlCommand cm = new SqlCommand("update blogs set title='" + Request.Form["_title"] + "', image='" + Request.Form["_image"] + "' ,_shortdesc='" + Request.Form["_shortdesc"] + "',_longdesc='" + Request.Form["_longdesc"] + "',Where id = '" + id + "'");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Update Successfully')</script>");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error" + ex.Message);
                Console.ReadLine();
            }

        }


        protected void Unnamed1_Click1(object sender, EventArgs e)
        {


        }

        protected void Delete(object sender, EventArgs e)
        {

        }
    }
}