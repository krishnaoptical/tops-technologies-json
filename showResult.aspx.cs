using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl_data.Items.Clear();
            ddl_data.Items.Add("Select File Name");
            ddl_data.AppendDataBoundItems = true;
            ddl_data.DataSource = db.tbl_marks.ToList();
            ddl_data.DataTextField = "file_path";
            ddl_data.DataValueField = "id";
            ddl_data.DataBind();
        }
    }
    protected void ddl_data_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        ds.ReadXml(Server.MapPath("~/") + ddl_data.Items[ddl_data.SelectedIndex].Text);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        SqlDataSource1.SelectCommand = "select * from tbl_marks";
        GridView2.DataBind();
    }
}