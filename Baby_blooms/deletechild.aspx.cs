using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class deletechild : System.Web.UI.Page
{
    public SqlConnection con;
    public string query;

    public void connection()
    {

        string constr = ConfigurationManager.ConnectionStrings["adminlogin"].ToString();

        con = new SqlConnection(constr);
        con.Open();

    }
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["id"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

        Button1.Text = "Delete Child";
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       ;
      
        connection();
        query = "deletechild";
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@child_id", TextBox1.Text.ToString());

        Int32 result = com.ExecuteNonQuery();
        if (result == 1)
        {
            Label1.Text = "Record Deleted Successfully";
            Label1.ForeColor = Color.Red;
        }
        else
        {
            Label1.Text = "Enter Valid child_id";
            Label1.ForeColor = Color.Red;
        }


        con.Close();
        
  
    }
}