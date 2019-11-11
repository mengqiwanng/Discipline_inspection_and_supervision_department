<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="xinwen.aspx.cs" Inherits="right"  StylesheetTheme="right"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="content11">
   <div id="leftt">
          <div id="left11" style="width:225px;height:260px;background:url('images/left2.jpg') no-repeat;">
             <h4>通知公告</h4>
               <div id="wenzi11">
                    <asp:Repeater ID="Repeater1" runat="server">
                         <ItemTemplate >
                              <li><a href="xaingxi2.aspx?cl1_id=3&id=<%#Eval ("id")%>"><%#Eval ("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                           </ItemTemplate>
                        </asp:Repeater>

                     </div>
                 </div>
                 <br />
          <div id="left3">
              <div style="width:225px;height:185px;background:url('images/lianxi.jpg') no-repeat;">
                <p>
                    地址：黑河学院13号信箱<br /><br />
                    邮编：164300<br /><br />
                    电话：0456-6842287\6842288 <br /><br />
                    Email：hhxyjcc@163.com<br />
                </p>
               </div>
    </div>
   </div>
   <div id="rightt">
     <h3>纪检新闻</h3>
        <div id="wenzi22">
           <asp:Repeater ID="Repeater2" runat="server">
               <ItemTemplate >
                   <li><a href="xaingxi2.aspx?cl1_id=7&id=<%#Eval ("id")%>"><%#Eval("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                </ItemTemplate>
            </asp:Repeater> 
         </div>  


   <div id="page">
      <table>
          <tr>
              <td>当前页码：<asp:Label ID="current_page" runat="server" Text="1"></asp:Label></td>
              <td >总页码：<asp:Label ID="count_page" runat="server" Text=""></asp:Label></td>
              <td><asp:LinkButton ID="first_page" runat="server" onclick="first_page_Click">第一页</asp:LinkButton></td>
              <td><asp:LinkButton ID="front_page" runat="server" onclick="front_page_Click">上一页</asp:LinkButton></td>
              <td><asp:LinkButton ID="next_page" runat="server" onclick="next_page_Click">下一页</asp:LinkButton></td>
              <td><asp:LinkButton ID="last_page" runat="server" onclick="last_page_Click">最后一页</asp:LinkButton></td>
          </tr>
       </table>    
    </div>
  </div>
</div>
</asp:Content>

