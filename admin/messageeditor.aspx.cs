using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_messageeditor : System.Web.UI.Page
{
    DataOperate mydo = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtodata();
           
        }
    }
    protected void bindtodata()
    {
        string sql = "select * from message where id=" + Request.QueryString["id"].ToString();
        OleDbDataReader dr =mydo.row(sql);
        if (dr.Read())
        {
            title.Text = dr["title"].ToString();
            author.Text = dr["author"].ToString();
            content1.InnerHtml = dr["content"].ToString();
            DropDownList1.Text = dr["cl1_id"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into message(title,author,cl1_id,content) values('" + title.Text.Trim() + "','" + author.Text.Trim() + "'," + Convert.ToInt32(DropDownList1.Text) + ",'" + content1.InnerText + "')";
        if (mydo.adu(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='messageadmin.aspx'</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("messageadmin.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select distinct cl1_id from message where cl1_id=" + Convert.ToInt32(DropDownList1.Text);
    }
}

