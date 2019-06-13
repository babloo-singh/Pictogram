using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewC : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add Connection String
        con = new SqlConnection("");        con.Open();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int download = 0;
        string img = "";
        if (e.CommandName == "View")
            Response.Redirect("View.aspx?id=" + e.CommandArgument);
        if (e.CommandName == "Download")
        {
            cmd = new SqlCommand("select * from dbo.[pictures] WHERE Id=" + e.CommandArgument, con);
            r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    download = r.GetInt32(4);
                    img = r.GetString(5);
                }
                r.Close();
            }
            download = download + 1;
            cmd = new SqlCommand("update dbo.[pictures] set downloaded=" + download + " where Id =" + e.CommandArgument, con);
            cmd.ExecuteNonQuery();
            string filename = MapPath(img);
            Response.ContentType = "image/JPEG";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");
            Response.TransmitFile(filename);
            Response.End();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}