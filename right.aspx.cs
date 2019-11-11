using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class right : System.Web.UI.Page
{
    DataOperate mydo = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater1();
            bindtorepeater2();
            bindtorepeater3();
        }
    }
    /*通知公告*/
    protected void bindtorepeater1()
    {
        try
        {
            string sql = "select top 5 * from message where cl1_id=3 order by datatime desc";
            Repeater1.DataSource = mydo.rows(sql, "dt");
            Repeater1.DataBind();
        }
        catch (Exception error)
        {
            Response.Write(error.Message.ToString());
        }
    }

    protected void bindtorepeater2()
    {
        string id = Request.QueryString["cl1_id"];
        Session["cl1_id"] = id;
        string sql = "select * from message where cl1_id=" + id;
        Repeater2.DataSource = mydo.rows(sql, "dt");
        Repeater2.DataBind();
        if (id == "1")
        {
            Label2.Text = "机构职能";
        }
        else if (id == "2")
        {
            Label2.Text = "工作动态";
        }
        else if (id == "3")
        {
            Label2.Text = "通知公告";
        }
        else if (id == "4")
        {
            Label2.Text = "警钟长鸣";
        }
        else if (id == "5")
        {
            Label2.Text = "廉政风险";
        }
        else if (id == "6")
        {
            Label2.Text = "网上举报";
        }
        else if (id == "7")
        {
            Label2.Text = "站长简介";
        }
        else if (id == "8")
        {
            Label2.Text = "招生工作";
        }
    }
    
    protected void bindtorepeater3()
    {
        int currentpage = Convert.ToInt32(current_page.Text);//存储当前页的值
        string id = Request.QueryString["cl1_id"];
        string sql = "select * from message where cl1_id=" + id + " order by datatime desc";
        PagedDataSource ps = new PagedDataSource();//实例化
        ps.AllowPaging = true;//允许分页
        ps.PageSize = 8;//每页上显示的行数
        ps.DataSource = mydo.rows(sql, "right").DefaultView;
        count_page.Text = Convert.ToString(ps.PageCount);//给总页码标签赋值
        first_page.Enabled = true;
        front_page.Enabled = true;
        next_page.Enabled = true;
        last_page.Enabled = true;

            if (currentpage == 1)
            {
                first_page.Enabled = false;
                front_page.Enabled = false;
            }
            if (currentpage == ps.PageCount)
            {
                next_page.Enabled = false;
                last_page.Enabled = false;
            }
            ps.CurrentPageIndex = currentpage - 1;

            Repeater2.DataSource = ps;
            Repeater2.DataBind();
        }
        protected void first_page_Click(object sender, EventArgs e)
        {
            current_page.Text = "1";
            bindtorepeater3();
        }
        protected void front_page_Click(object sender, EventArgs e)
        {
            current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) - 1);
            bindtorepeater3();
        }
        protected void next_page_Click(object sender, EventArgs e)
        {
            current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) + 1);
            bindtorepeater3();
        }
        protected void last_page_Click(object sender, EventArgs e)
        {
            current_page.Text = count_page.Text;
            bindtorepeater3();
        }
}