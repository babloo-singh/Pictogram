using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Account_Register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add Connection String
        con = new SqlConnection("");
                con.Open();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO [dbo].[User] ([email], [name], [phone], [password], [added]) VALUES ('" + email.Text + "','" + Name.Text + "','" + phn.Text + "','" + Pass.Text + "'," + 0 + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Name.Text = "";
        email.Text = "";
        phn.Text = "";
        Pass.Text = "";
        Response.Redirect("./Login.aspx?msg=Login With The Created Account ");

    }
}