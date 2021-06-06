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

public partial class adlog : System.Web.UI.Page

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
        Button1.Text = "submit";
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection();
        query = "adminlogin";  
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@admin_id", TextBox1.Text.ToString());   
        com.Parameters.AddWithValue("@password", TextBox2.Text.ToString()); 

        int usercount = (Int32)com.ExecuteScalar();

        if (usercount == 1)   
        {
            Session["admin"] = TextBox1.Text;  
            Response.Redirect("Admin_page.aspx"); 
        }
        else
        {
            con.Close();
            Label1.Text = "Invalid User Name or password";
            Label1.ForeColor = Color.Red;
        }
    }
}