using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Technical_Person_change_pass : System.Web.UI.Page
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
        cmd = new SqlCommand("update registration(password) values('" + TextBox2.Text + "') where password like '" + TextBox1.Text + "' and userid like '" + id + "'", mycon); ;
        cmd.ExecuteNonQuery();
        mycon.Close();
        TextBox1.Text = TextBox2.Text = " ";
        Response.Write("<script language='javascript'>alert('Password Changed')</script>");
    }
}