using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["amarpreet"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("select * from registration where userid='" + Login1.UserName + "' and  password='" + Login1.Password + "' ", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        if (table.Rows.Count > 0)
        {
            e.Authenticated = true;
            
            Session["uid"] = table.Rows[0][3].ToString();
            string utype = table.Rows[0][5].ToString();
            if (utype == "user")
                Response.Redirect("~/user/user_home.aspx");
            else if (utype == "admin")
                Response.Redirect("~/admin/admin_home.aspx");
            else if (utype == "TH")
                Response.Redirect("~/Technical head/th_home.aspx");
            else if(utype=="TP")
                Response.Redirect("~/Technical Person/tp_home.aspx");
        }
        else
        {
            e.Authenticated = false;
        }
    }
}