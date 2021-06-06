using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

public partial class doc_signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString());


    SqlParameter pr1;
    SqlParameter pr2;
    SqlParameter pr3;
    SqlParameter pr4;
    SqlParameter pr5;
    SqlParameter pr6;
    SqlParameter pr7;


    protected void Page_Load(object sender, EventArgs e)
    {
       
        Button1.Text = "submit";

        Label1.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand cm = new SqlCommand("adddoc", con);

            con.Open();
            //cm = new SqlCommand("adddoc", db);
            cm.CommandType = CommandType.StoredProcedure;


            pr1 = new SqlParameter("@doc_id", DbType.Int32);
            pr1.Value = TextBox1.Text;

            pr2 = new SqlParameter("@doc_name", DbType.String);
            pr2.Value = TextBox2.Text;

            pr3 = new SqlParameter("@hospital", DbType.String);
            pr3.Value = TextBox3.Text;

            pr4 = new SqlParameter("@city", DbType.String);
            pr4.Value = TextBox4.Text;

            pr5 = new SqlParameter("@qualification", DbType.String);
            pr5.Value = TextBox5.Text;

            pr6 = new SqlParameter("@email_id", DbType.String);
            pr6.Value = TextBox6.Text;

            pr7 = new SqlParameter("@password", DbType.String);
            pr7.Value = TextBox7.Text;



            cm.Parameters.Add(pr1);
            cm.Parameters.Add(pr2);
            cm.Parameters.Add(pr3);
            cm.Parameters.Add(pr4);
            cm.Parameters.Add(pr5);
            cm.Parameters.Add(pr6);
            cm.Parameters.Add(pr7);


            cm.ExecuteNonQuery();
            Label1.Text = "Doctor Added Successfully";
            Label1.ForeColor = Color.Green;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }
        catch
        {
            Label1.Text = "Doctor id already exists choose a different one";
            Label1.ForeColor = Color.Red;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }



    }
}