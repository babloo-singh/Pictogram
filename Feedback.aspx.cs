using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add Connection String
        con = new SqlConnection("");
                con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "INSERT INTO [dbo].[feedback] ([name], [email], [comments], [entrydate]) VALUES ('" + Name.Text + "','" + Eml.Text + "'," +Msg.Text+",'@Date')";
        cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Date",DateTime.Now);
        cmd.ExecuteNonQuery();
        con.Close();
        lb.Text = "Thank You For the FeedBack";
    }
}