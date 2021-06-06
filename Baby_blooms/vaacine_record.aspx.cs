using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

public partial class vaacine_record : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString());


    SqlParameter pr1;
    SqlParameter pr2;
    SqlParameter pr3;
    SqlParameter pr4;
   



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["num"] == null)
        {
            Response.Redirect("doc_login.aspx");
        }
        Button1.Text = "ADD RECORDS";

        Label1.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand cm = new SqlCommand("addvacrecord", con);

            con.Open();

            cm.CommandType = CommandType.StoredProcedure;


            pr1 = new SqlParameter("@vaccine_id", DbType.Int32);
            pr1.Value = TextBox1.Text;

            pr2 = new SqlParameter("@child_id", DbType.Int32);
            pr2.Value = TextBox2.Text;

            pr3 = new SqlParameter("@due_date", DbType.String);
            pr3.Value = TextBox3.Text;

            pr4 = new SqlParameter("@given_date", DbType.String);
            pr4.Value = TextBox4.Text;

        





            cm.Parameters.Add(pr1);
            cm.Parameters.Add(pr2);
            cm.Parameters.Add(pr3);
            cm.Parameters.Add(pr4);
            



            cm.ExecuteNonQuery();
            Label1.Text = "Vaccine records Added Successfully";
            Label1.ForeColor = Color.Green;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";



        }
        catch
        {
            Label1.Text = "Vaccine records already exists choose a different one";
            Label1.ForeColor = Color.Red;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";


        }



    }
}