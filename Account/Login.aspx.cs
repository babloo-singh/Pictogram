using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ReturnUrl"] != null)
            Response.Redirect("~/Account/Manage.aspx");
        string set = Request.QueryString["msg"];
        if (set != null)
            lbl.Text = set;
        else
            lbl.Text = "";
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename='C:\\Users\\Babloo Singh\\Documents\\pictogram.mdf';Integrated Security=True;Connect Timeout=30");
        con.Open();
    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from dbo.[User] WHERE email='" + UserName.Text + "'and password='" + Password.Text + "'",con);
        r=cmd.ExecuteReader();
        if (r.HasRows)
        {
            while (r.Read())
            {
                Session["email"] = r.GetString(0);
                Session["user"] = r.GetString(1);
                Session["added"] = r.GetInt32(4);
            Response.Redirect("../Default.aspx");
            }
        }
        
    }
}