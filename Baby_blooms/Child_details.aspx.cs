using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Child_details : System.Web.UI.Page
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
        con =System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString();;
        db = new SqlConnection();
        db.ConnectionString = con;
        db.Open();
        st = "select child_id,parent_id,doc_id,child_name,birth_place,birth_weight,dob,sex    from Child where parent_id IN (select user_id from Users where user_name='" + Session["id"] + "')";
        cm = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "Child");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "Child";
        Repeater1.DataBind();
    }







    
}
