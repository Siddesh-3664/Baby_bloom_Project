using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class vaccine_display_doc : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cm;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();

    string con = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["num"] == null)
        {
            Response.Redirect("doc_login.aspx");
        }

        con = System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString();
        db = new SqlConnection();
        db.ConnectionString = con;
        db.Open();

        cm = new SqlCommand("hello", db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "vaccine_records");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "vaccine_records";
        Repeater1.DataBind();
    }
}