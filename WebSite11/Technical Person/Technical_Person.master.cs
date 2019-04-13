using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Technical_Person_Technical_Person : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("~/error.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        string value = TreeView1.SelectedValue;
        if (value == "Logout")
        {
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }
        else if (value == "Display Query")
        {
            Response.Redirect("~/Technical person/query.aspx");
        }
        else if (value == "Change Password")
        {
            Response.Redirect("~/Technical Person/change_pass.aspx");
        }
        else if (value == "Home")
        {
            Response.Redirect("~/Technical Person/tp_home.aspx");
        }
    }
}
