using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_Admin_Account : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["amarpreet"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("insert into registration(name,telephone,number,userid,password,type) values ('" + TextBox1.Text + "','" + RadioButtonList1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','"+DropDownList1.Text+"')", mycon);
        cmd.ExecuteNonQuery();
        mycon.Close();
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = " ";
        Response.Write("<script language='javascript'>alert('registration success')</script>");
        
    }
}