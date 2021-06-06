using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class vaccine_display_user : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cm;
    string st = "";
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();

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
        st = "select vaccine_id,child_id,given_date,due_date from vaccine_records where child_id IN (select child_id from Child where parent_id IN (select user_id from Users where user_name='" + Session["id"] + "'))";
        cm = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "vaccine_records");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "vaccine_records";
        Repeater1.DataBind();
    }
}