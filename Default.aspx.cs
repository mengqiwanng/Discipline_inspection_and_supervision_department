using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    DataOperate mydo = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater1();
            bindtorepeater2();
            bindtorepeater3();
            bindtorepeater4();
        }
    }
    /*警钟长鸣*/
    protected void bindtorepeater1()
    {
        try
        {
            string sql = "select top 5 * from message where cl1_id=4 order by datatime desc";
            Repeater1.DataSource = mydo.rows(sql, "dt");
            Repeater1.DataBind();
        }
        catch (Exception error)
        {
            Response.Write(error.Message.ToString());
        }
    }
    /*纪检新闻*/
    protected void bindtorepeater2()
    {
        try
        {
            string sql = "select top 5 * from xinwen order by datatime desc";
            Repeater2.DataSource = mydo.rows(sql, "dt");
            Repeater2.DataBind();
        }
        catch (Exception error)
        {
            Response.Write(error.Message.ToString());
        }
    }
    /* 通知公告*/
    protected void bindtorepeater3()
    {
        try
        {
            string sql = "select top 5 * from message where cl1_id=3 order by datatime desc";
            Repeater3.DataSource = mydo.rows(sql, "dt");
            Repeater3.DataBind();
        }
        catch (Exception error)
        {
            Response.Write(error.Message.ToString());
        }
    }
    /*工作动态*/
    protected void bindtorepeater4()
    {
        try
        {
            string sql = "select top 5 * from message where cl1_id=2 order by datatime desc";
            Repeater4.DataSource = mydo.rows(sql, "dt");
            Repeater4.DataBind();
        }
        catch (Exception error)
        {
            Response.Write(error.Message.ToString());
        }
    }
     


}