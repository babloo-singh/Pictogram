using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewU : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add Connection String
        con = new SqlConnection("");
                con.Open();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            string str = "DELETE from [dbo].[pictures] WHERE ID =" + e.CommandArgument;
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewU.aspx");
        }
    }
}