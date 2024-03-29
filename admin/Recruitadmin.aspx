﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recruitadmin.aspx.cs" Inherits="admin_noticeadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css" />
    <link rel="stylesheet" href="css/admin1.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="panel admin-panel">
          <div class="panel-head" ><strong><img alt="" src="images/gl.jpg" />&nbsp;新闻管理</strong></div>
          <div class="text">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   Width="95%" style="text-align:center; margin-bottom: 0px;" 
                  AllowPaging="True"  
                   DataKeyNames="id" 
                   onrowdeleting="GridView1_RowDeleting" 

                  onpageindexchanging="GridView1_PageIndexChanging">
                   <Columns>
                       <asp:BoundField DataField="id" HeaderText="编号" >  
                       <HeaderStyle Width="50px" /> </asp:BoundField>
                       <asp:BoundField DataField="title" HeaderText="标题" > 
                       <HeaderStyle Width="100px" />  </asp:BoundField>
                       <asp:BoundField DataField="content" HeaderText="内容" >
                        <HeaderStyle Width="540px" /> </asp:BoundField>
                       <asp:BoundField DataField="author" HeaderText="发布人" >
                        <HeaderStyle Width="70px" /> </asp:BoundField>
                       <asp:BoundField DataField="cnt" HeaderText="点击量" >
                        <HeaderStyle Width="60px" /> </asp:BoundField>
                       <asp:HyperLinkField DataNavigateUrlFields="id" 
                           DataNavigateUrlFormatString="Recruiteditor.aspx?id={0}" Text="编辑" />
                       <asp:CommandField ControlStyle-CssClass="ys" ShowDeleteButton="True">  
                            <ControlStyle CssClass="ys"></ControlStyle>

                       <HeaderStyle Width="60px" />  </asp:CommandField>
                   </Columns>
                   <PagerStyle BackColor="White" BorderColor="White" BorderStyle="None" 
                       HorizontalAlign="Center" CssClass="wz" ForeColor="Black"/>
                   <RowStyle Height="30px" />
               </asp:GridView>
          </div>
          </div>
    </form>
</body>
</html> 