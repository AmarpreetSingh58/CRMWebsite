using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_query : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["amarpreet"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        string id = Session["uid"].ToString();
        cmd = new SqlCommand("insert into query(productno,category,query,userid,status) values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" +id+ "','pending')", mycon);
        cmd.ExecuteNonQuery();
        mycon.Close();
        TextBox1.Text = TextBox2.Text = " ";
        Response.Write("<script language='javascript'>alert('Query Send')</script>");
    }
}