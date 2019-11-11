using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xaingxi : System.Web.UI.Page
{
    DataOperate mydo = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            addcnt();
            bindtorepeater1();
            bindtolable1();
        }
    }

    protected void bindtorepeater1()
    {
        string id = Request.QueryString["cl1_id"];
        string sql = "select * from xinwen where cl1_id=" + id;
        Repeater1.DataSource = mydo.rows(sql, "dts");
        Repeater1.DataBind();
        if (id == "1")
        {
            list1.Text = "机构职能";
        }
        else if (id == "2")
        {
            list1.Text = "工作动态";
        }
        else if (id == "3")
        {
            list1.Text = "通知公告";
        }
        else if (id == "4")
        {
            list1.Text = "警钟长鸣";
        }
        else if (id == "5")
        {
            list1.Text = "廉政风险";
        }
        else if (id == "6")
        {
            list1.Text = "网上举报";
        }
        else if (id == "7")
        {
            list1.Text = "纪检新闻";
        }
        else if (id == "8")
        {
            list1.Text = "站长简介";
        }
    }
    protected void bindtolable1()
    {
        string id = Request.QueryString["id"];
        string sql = "select * from xinwen where id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {
            right2.Text = dr["title"].ToString();
            datatime.Text = dr["datatime"].ToString().Substring (0,10);
            author.Text = dr["author"].ToString();
            cnt.Text = dr["cnt"].ToString();
            right3.Text = dr["content"].ToString();
        }
    }
    protected void addcnt()
    {
        string id = Request.QueryString["id"];
        string sql = "update xinwen set cnt=cnt+1 where id=" + id;
        mydo.updatedata(sql);
    }
}