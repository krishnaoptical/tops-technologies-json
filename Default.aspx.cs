using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        ArrayList arrData = new ArrayList();
        arrData.Add(txt_name.Text);
        arrData.Add(txt_section.Text);
        Session["data"] = arrData;
        Response.Redirect("questionPage.aspx");
    }
}