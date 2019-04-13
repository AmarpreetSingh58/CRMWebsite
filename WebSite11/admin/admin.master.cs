using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("~/error.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        string value = TreeView1.SelectedValue;
        if (value == "Log Out")
        {
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }
        else if (value == "Display Query")
        {
            Response.Redirect("~/admin/Query_admin.aspx");
        }
        else if (value == "Change Password")
        {
            Response.Redirect("~/admin/change_pass.aspx");
        }
        else if (value == "Create Account")
        {
            Response.Redirect("~/admin/Admin_Account.aspx");
        }
        else if (value == "Home")
        {
            Response.Redirect("~/admin/admin_home.aspx");
        }
    }
}
