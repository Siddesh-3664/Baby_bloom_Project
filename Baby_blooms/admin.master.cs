using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adlog.aspx");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("index.aspx");
    }
}
