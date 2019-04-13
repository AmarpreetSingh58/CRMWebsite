using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Technical_Person_query : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["amarpreet"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void display()
    {

    }
    protected void display1()
    {
        mycon.Open();
        string id = Session["uname"].ToString();
        cmd = new SqlCommand("select * from query where tpid='" + id + "' and solution is NULL", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        GridView1.DataSource = table;
        GridView1.DataBind();
        GridView1.Columns[4].Visible = false;
        mycon.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        display1();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        mycon.Open();
        Label lid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label3");
        TextBox tsol = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        cmd = new SqlCommand("update query set sol='" + tsol.Text + "' where sno=" + lid.Text + "", mycon);
        cmd.ExecuteNonQuery();
        display();
        mycon.Close();

    }
}