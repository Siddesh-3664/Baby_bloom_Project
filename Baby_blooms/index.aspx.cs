using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cm;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();
    string st = "";
    string con = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        con = System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString();
        db = new SqlConnection();
        db.ConnectionString = con;
        db.Open();
        st = "select filename,Heading,content from Blogs";
        cm = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cm);
        sqlda.Fill(ds, "Blogs");
        Repeater1.DataSource = ds;
        Repeater1.DataMember = "Blogs";
        Repeater1.DataBind();

    }
}