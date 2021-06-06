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

public partial class delete_doc : System.Web.UI.Page
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

        if (Session["admin"] == null)
        {
            Response.Redirect("adlog.aspx");
        }
        Button1.Text = "Delete Doctor";
        Label2.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection();
        query = "deletedoctor";   
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@doc_id", TextBox1.Text.ToString());   
       
       Int32 result = com.ExecuteNonQuery();
       if (result == 1)
       {
           Label2.Text = "Record Deleted Successfully";
           Label2.ForeColor = Color.Red;
       }
       else {
           Label2.Text = "Enter Valid doc_id";
           Label2.ForeColor = Color.Red;
       }
       
   
 
    
            con.Close();
            
        }
        
    }


    
