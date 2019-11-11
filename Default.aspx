<%@ Page Title="" Debug="true" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="content">
        <div id="left"style="width:225px;background:#F2EBD9;">
            <%--警示标语--%>
           <div id="left1">
                <div style="width:225px;height:140px;background:url('images/left1.jpg') no-repeat;">
                    <h4>廉 政 警 句</h4>
                    <p>
                        &nbsp;&nbsp;&nbsp;杨业功《公仆铭》：位不在高，廉洁则名。权不在大，为公则灵，斯是公仆，惟吾德馨。
                    </p>
                </div>
            </div>    
             <%--警钟长鸣--%>
             <div id="left2" style="width:225px;height:260px;background:url('images/left2.jpg') no-repeat;">
                <h4>警钟长鸣</h4>
                <div id="wenzi1">
                   <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate >
                             <li><a href="xiangxi.aspx?cl1_id=4&id=<%#Eval ("id")%>"><%#Eval ("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                 </div>
             </div>
             <br /> 
            <%--联系方式的盒子--%>
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
            <br />  
        </div>
        <div id="top">
           <div id="middle1"style="width:280px;height:232px;background:url('images/middle1.jpg') no-repeat;">
                  <div id="hotpic">
                        <div id="NewsPic">
                            <a target="_blank" href="#" style="visibility: visible; display: block;">
                                <img width="260x" height="160px" src="images/1.jpg" class="Picture" alt="测试用图片" title="校纪委召开巡视整改专项工..." /></a>
                            <a style="visibility: hidden; display: none;" target="_blank" href="#">
                                <img class="Picture" src="images/2.jpg" style="width: 260px; height: 160px;" alt="测试用图片" title="学校召开党员干部警示教育大会" /></a> 
                            <a style="visibility: hidden; display: none;" target="_blank" href="#">
                                <img class="Picture" src="images/3.jpg" style="width: 260px; height: 160px;" alt="测试用图片" title="学校纪委专题学习《中华人..." /></a>
                            <a style="visibility: hidden; display: none;" target="_blank" href="#">
                                <img width="260px" height="160px" src="images/4.jpg" class="Picture" alt="测试用图片" title="学校纪委委员集体学习党的..." /></a>
                            <div class="Nav">
                                <span class="Normal">4</span>
                                <span class="Normal">3</span>
                                <span class="Normal">2</span>
                                <span class="Cur">1</span>
                            </div>
                        </div>
                        <div id="NewsPicTxt" style="width: 260px; overflow: hidden"><a target="_blank" href="#">学校纪委委员集体学习党的...</a></div>
                    </div>
                    <script type="text/javascript">
                        $('#hotpic').liteNav(1000);
                    </script>

                    </div>
           <div id="right1" style="width:460px;height:232px;background:url('images/right1.jpg') no-repeat;">
               <div id="wenzi2">
                   <asp:Repeater ID="Repeater2" runat="server">
                      <ItemTemplate >
                         <li><a href="xinwen.aspx"><%#Eval ("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                       </ItemTemplate>
                    </asp:Repeater>
               </div>
            </div>
        </div>
        <br /> <br /> <br /> 
        <div id="down">
            <div id="middle2"style="width:370px;height:264px;background:url('images/z3.jpg') no-repeat;">
                 <p ><b>通知公告</b></p>
                 <div id="wenzi3">
                     <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate >
                             <li><a href="xiangxi.aspx?cl1_id=3&id=<%#Eval ("id")%>"><%#Eval ("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                          </ItemTemplate>
                        </asp:Repeater>
                 </div>
            </div>
            <div id="right2"style="width:370px;height:264px;background:url('images/z3.jpg') no-repeat;">
                 <p ><b>工作动态</b></p>
                 <div id="wenzi4">
                     <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate >
                             <li><a href="xiangxi.aspx?cl1_id=2&id=<%#Eval ("id")%>"><%#Eval ("title")%></a><span><%#Eval("datatime", "{0:yyyy-MM-dd}")%></span></li>
                          </ItemTemplate>
                        </asp:Repeater>
                 </div>
            </div>

        </div>
        <br /> <br /> <br /> 
            <div id="gundong">
            <div id="demo" style="overflow:hidden;width:750;height:140px;" align="center">
	        <table border="0" align="center" cellpadding="1" cellspacing="1" cellspace="0" >
		        <tr><td valign="top" bgcolor="ffffff" id="marquePic1">
	        <table width='70%' border='0' cellspacing='0'>
                  <tr>
                      <td align="center"><a href='#'><img src="images/g1.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>随</a></td>
                      <td align="center"><a href='#'><img src="images/g2.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>便</a></td>
                      <td align="center"><a href='#'><img src="images/g3.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>放</a></td>
                      <td align="center"><a href='#'><img src="images/g4.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>入</a></td>
                      <td align="center"><a href='#'><img src="images/g5.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>网</a></td>
                      <td align="center"><a href='#'><img src="images/g6.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>页</a></td>
                      <td align="center"><a href='#'><img src="images/g7.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>凑</a></td>
                      <td align="center"><a href='#'><img src="images/g8.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>数</a></td>
                      <td align="center"><a href='#'><img src="images/g9.jpg" width="120" height="100" border="0" alt=" " /><br/><br/>的</a></td>
                   </tr>
               </table>
		    </td><td id="marquePic2" valign="top"></td></tr>
	       </table></div>
         <script type="text/javascript">
             var speed = 50
             marquePic2.innerHTML = marquePic1.innerHTML
             function Marquee() {
                 if (demo.scrollLeft >= marquePic1.scrollWidth) {
                     demo.scrollLeft = 0
                 } else {
                     demo.scrollLeft++
                 }
             }
             var MyMar = setInterval(Marquee, speed)
             demo.onmouseover = function () { clearInterval(MyMar) }
             demo.onmouseout = function () { MyMar = setInterval(Marquee, speed) } 
          </script>
        </div>
</div>
</asp:Content>

