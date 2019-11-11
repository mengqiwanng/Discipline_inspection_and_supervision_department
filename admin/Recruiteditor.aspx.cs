﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_Recruitaditor : System.Web.UI.Page
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
        string sql = "select * from xinwen where id=" + Request.QueryString["id"].ToString();
        OleDbDataReader dr =mydo.row(sql);
        if (dr.Read())
        {
            title.Text = dr["title"].ToString();
            author.Text = dr["author"].ToString();
            content1.InnerHtml = dr["content"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into xinwen(title,author,content,cl1_id) values('" + title.Text.Trim() + "','" + author.Text.Trim() + "','" + content1.InnerText + "',7)";
        if (mydo.adu(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='Recruitadmin.aspx'</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recruitadmin.aspx");
    }
}
