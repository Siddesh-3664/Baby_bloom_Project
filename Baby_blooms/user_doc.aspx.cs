using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_doc : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cm;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();
    string st = "";
    string con = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("user_login.aspx");
        }
        con = System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString();
        db = new SqlConnection();
        db.ConnectionString = con;
        db.Open();
        st = "select imagepath,doc_id,doc_name,hospital,city,qualification from Doctor";
        cm = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "Doctor");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "Doctor";
        Repeater1.DataBind();

    }
}