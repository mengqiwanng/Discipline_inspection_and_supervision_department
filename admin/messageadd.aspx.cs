using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_messageadd : System.Web.UI.Page
{
    DataOperate mydo = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into message(title,author,cl1_id,content) values('" + title.Text.Trim() + "','" + author.Text.Trim() + "'," + Convert.ToInt32(DropDownList1.Text) + ",'" + content1.InnerText + "')";
        if (mydo.adu(sql))
        {
            Response.Write("<script>alert('添加成功')</script>");
            title.Text = "";
            author.Text = "";
            DropDownList1.SelectedIndex = 0;
            content1.InnerText = "";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select distinct cl1_id from message where cl1_id=" + Convert.ToInt32(DropDownList1.Text);
    }
}