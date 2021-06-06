using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

public partial class AddChild : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["adminlogin"].ToString());


    SqlParameter pr1;
    SqlParameter pr2;
    SqlParameter pr3;
    SqlParameter pr4;
    SqlParameter pr5;
    SqlParameter pr6;
    SqlParameter pr7;
    SqlParameter pr8;
    SqlParameter pr9;
    SqlParameter pr10;
    SqlParameter pr11;
    SqlParameter pr12;
    SqlParameter pr13;



    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Text = "ADDCHILD";

        Label1.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand cm = new SqlCommand("addchild", con);

            con.Open();

            cm.CommandType = CommandType.StoredProcedure;


            pr1 = new SqlParameter("@child_name", DbType.String);
            pr1.Value = TextBox1.Text;

            pr2 = new SqlParameter("@father_name", DbType.String);
            pr2.Value = TextBox2.Text;

            pr3 = new SqlParameter("@mother_name ", DbType.String);
            pr3.Value = TextBox3.Text;

            pr4 = new SqlParameter("@father_qual", DbType.String);
            pr4.Value = TextBox4.Text;

            pr5 = new SqlParameter("@father_occu", DbType.String);
            pr5.Value = TextBox5.Text;

            pr6 = new SqlParameter("@mother_qual ", DbType.String);
            pr6.Value = TextBox6.Text;


            pr7 = new SqlParameter("@mother_occu", DbType.String);
            pr7.Value = TextBox7.Text;

            pr8 = new SqlParameter("@birth_place", DbType.String);
            pr8.Value = TextBox8.Text;

            pr9 = new SqlParameter("@birth_weight", DbType.String);
            pr9.Value = TextBox9.Text;

            pr10 = new SqlParameter("@dob", DbType.String);
            pr10.Value = TextBox10.Text;

            pr11 = new SqlParameter("@sex", DbType.String);
            pr11.Value = DropDownList1.Text;

            pr12 = new SqlParameter("@parent_id", DbType.Int32);
            pr12.Value = TextBox12.Text;

            pr13 = new SqlParameter("@doctor_id", DbType.Int32);
            pr13.Value = TextBox13.Text;





            cm.Parameters.Add(pr1);
            cm.Parameters.Add(pr2);
            cm.Parameters.Add(pr3);
            cm.Parameters.Add(pr4);
            cm.Parameters.Add(pr5);
            cm.Parameters.Add(pr6);
            cm.Parameters.Add(pr7);
            cm.Parameters.Add(pr8);
            cm.Parameters.Add(pr9);
            cm.Parameters.Add(pr10);
            cm.Parameters.Add(pr11);
            cm.Parameters.Add(pr12);
            cm.Parameters.Add(pr13);



            cm.ExecuteNonQuery();
            Label1.Text = "User Added Successfully";
            Label1.ForeColor = Color.Green;
        


        }
        catch
        {
            Label1.Text = "User name already exists choose a different one";
            Label1.ForeColor = Color.Red;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
        }



    }
}