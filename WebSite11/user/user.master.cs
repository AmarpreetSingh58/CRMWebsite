using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user : System.Web.UI.MasterPage
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
        else if (value == "Send Query")
        {
            Response.Redirect("~/user/query.aspx");
        }
        else if (value == "Home")
        {
            Response.Redirect("~/user/user_home.aspx");
        }
    }
}
