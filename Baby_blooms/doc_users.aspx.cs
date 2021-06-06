using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class doc_users : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cm;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();
    string st = "";
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
        st = "select user_name,city_name,dist,email_id from Users where doctor_id=" +Session["num"];
        cm = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "Users");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "Users";
        Repeater1.DataBind();
    }
}