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

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Section");
                dt.Columns.Add("qus");
                for (int i = 0; i < int.Parse(txt_section.Text); i++)
                {
                    ArrayList arrQ = (ArrayList)arrData[2];
                    string a = (i + 1).ToString();

                    for (int j = 0; j < int.Parse(arrQ[i].ToString()); j++)
                    {

                        DataRow dr = dt.NewRow();
                        dr[0] = "Section " + a;
                        dr[1] = "Question " + (j + 1).ToString();
                        dt.Rows.Add(dr);
                    }

                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
    protected void btn_previous_Click(object sender, EventArgs e)
    {

    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        DataTable final_dt = new DataTable();
        final_dt.Columns.Add("Section");
        final_dt.Columns.Add("Question");
        final_dt.Columns.Add("Marks");
        final_dt.Columns.Add("Obtains");
        final_dt.Columns.Add("Notes");
        int tm = 0;
        int tom = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            TextBox txt_m = (TextBox)GridView1.Rows[i].FindControl("txt_m");
            TextBox txt_om = (TextBox)GridView1.Rows[i].FindControl("txt_om");
            TextBox txt_n = (TextBox)GridView1.Rows[i].FindControl("txt_n");

            DataRow dr = final_dt.NewRow();
            dr[0] = GridView1.Rows[i].Cells[0].Text;
            dr[1] = GridView1.Rows[i].Cells[1].Text;

            dr[2] = txt_m.Text;
            dr[3] = txt_om.Text;
            dr[4] = txt_n.Text;
            tm = tm + int.Parse(txt_m.Text);
            tom = tom + int.Parse(txt_om.Text);
            final_dt.Rows.Add(dr);

        }
        if (tm == int.Parse(txt_marls.Text))
        {
            DataSet ds = new DataSet();

            ds.Tables.Add(final_dt);
            Guid a = Guid.NewGuid();
            string filename = txt_name.Text + (a.ToString()) + ".xml";
            ds.WriteXml(Server.MapPath("~/") + filename);
            DataClassesDataContext db = new DataClassesDataContext();
            tbl_mark marks = new tbl_mark();
            marks.date_ = DateTime.Now.Date;
            marks.name = txt_name.Text;
            marks.obtains_ = tom;
            marks.marks_ = int.Parse(txt_marls.Text);
            marks.file_path = filename;

            db.tbl_marks.InsertOnSubmit(marks);
            db.SubmitChanges();
            Response.Redirect("showResult.aspx");
        }
        else
        {
            Response.Write("Total Miss Match!");
        }
    }
}