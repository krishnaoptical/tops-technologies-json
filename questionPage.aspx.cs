using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["data"] != null)
        {
            ArrayList arrData = new ArrayList();
            arrData = (ArrayList)Session["data"];
            txt_name.Text = arrData[0].ToString();
            txt_section.Text = arrData[1].ToString();

            if(!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Section");
                for (int i = 0; i < int.Parse(txt_section.Text); i++)
                {
                    DataRow dr = dt.NewRow();
                    dr[0] = "Section" + (i + 1).ToString();
                    dt.Rows.Add(dr);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        ArrayList arrData = new ArrayList();
        arrData = (ArrayList)Session["data"];
        ArrayList arrQ = new ArrayList();    
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            TextBox tx = (TextBox)GridView1.Rows[i].FindControl("txt_q");
            arrQ.Add(tx.Text);
        }
        arrData.Add(arrQ);
        Session["data"] = arrData;
        Response.Redirect("marks.aspx");
    }
    protected void btn_previous_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}