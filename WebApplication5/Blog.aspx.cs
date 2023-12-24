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
    public partial class Blog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
            cmd.CommandText = "select * from blogs";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"data source=DESKTOP-QKPTL50\SQLEXPRESS05; database=puraniks_city; integrated security=SSPI");
                SqlCommand cm = new SqlCommand("insert into blogs(title,short_desc,long_desc,image,cate)values" +
                    "('" + title.Text + "','" + short_desc.Text + "','" + long_desc.Text + "','" + image.Text + "','" + Request.Form["cate"] + "');", con);
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Success')</script>");
                Response.Redirect("/blog");

                Console.ReadLine();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error" + ex.Message);
                Console.ReadLine();
            }

        }

        protected void deleteBtn(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlInputButton btn = (System.Web.UI.HtmlControls.HtmlInputButton)sender;
            string id = btn.Attributes["data-id"];
            cmd.Connection = con;
            cmd.CommandText = "delete from blogs where id='" + id + "'";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("/Blog");
        }
    }
    
}