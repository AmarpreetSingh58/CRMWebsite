using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Technical_head_query : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["amarpreet"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            mycon.Open();
            cmd = new SqlCommand("select distinct(USERID) from registration where TYPE='TP'", mycon);
            dr = cmd.ExecuteReader();
            table.Clear();
            table.Load(dr);
            mycon.Close();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                DropDownList1.Items.Add(table.Rows[i][0].ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        string id = Session["uid"].ToString();
        cmd = new SqlCommand("select * from query where tpid is NULL and thid like '"+id+"'", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        GridView1.DataSource = table;
        GridView1.DataBind();
        GridView1.Columns[3].Visible = false;
        mycon.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        CheckBox chk1;
        Label lid;
        mycon.Open();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            chk1 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (chk1.Checked == true)
            {
                lid = (Label)GridView1.Rows[i].FindControl("Label4");
                cmd = new SqlCommand("update  query set thid ='" + DropDownList1.Text + "' where serialno ='" + lid.Text + "'", mycon);
                cmd.ExecuteNonQuery();
            }

        }
        mycon.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}