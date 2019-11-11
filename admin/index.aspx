<%@ Page Language="C#" Debug=true AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin1_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
		<title>网站管理系统后台</title>
		<link href="css/Site.css" rel="stylesheet" type="text/css" />
		<link href="css/zy.layout.css" rel="stylesheet" />
		<link href="css/zy.form.css" rel="stylesheet" />
		<link href="css/font-awesome.min.css" rel="stylesheet" />
		<style type="text/css">
			a{
				text-decoration: none;
				color: #333;
			}
			.headerlitooleulsubitem_gray {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #BCD4E5;
				border-right: 1px solid #BCD4E5;
				border-bottom: 1px solid #BCD4E5;
				box-shadow: 0px 0px 5px #BCD4E5;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_red {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #E5BCD4;
				border-right: 1px solid #E5BCD4;
				border-bottom: 1px solid #E5BCD4;
				box-shadow: 0px 0px 5px #E5BCD4;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_gray>li,
			.headerlitooleulsubitem_red>li {
				height: 45px;
				background-color: White;
				padding: 0px 10px;
				border-bottom: 1px solid #E4ECF3;
				font-size: 14px;
				line-height: 26px;
			}
			
			.headerlitoolelisubitemtitle_gray {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #ECF2F7 !important;
				margin: 0px !important;
				color: #8090A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #BCD4E5 !important;
			}
			
			.headerlitoolelisubitemtitle_red {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #F7ECF2 !important;
				margin: 0px !important;
				color: #B471A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #E5BCD4 !important;
			}
			
			.headerlitooleulsubitem_gray>li:hover {
				background-Color: #F4F9FC;
			}
			
			.headerlitooleulsubitem_red>li:hover {
				background-color: #FCF4F9;
			}
			
			.ulsubitemitems>li {
				float: left;
				height: 20px;
				font-size: 13px;
				font-weight: normal !important;
				color: #555 !important;
			}
			
			.ulsubitemitems>li:last-child {
				clear: both;
				width: 100%;
				height: 10px;
				margin-top: 8px;
				background-color: #DADADA;
			}
			
			.headerlitools_info {
				background-color: #0a318d;
				height: 45px;
				padding: 0px 10px;
				width: 135px;
			}
			
			.headeruserface {
				background-image: url('/content/resources/images/logo.png');
				width: 40px;
				height: 40px;
				background-color: white;
				margin: 2px 10px 2px 2px;
				border-radius: 20px;
				float: left;
			}
			
			.headerlitools_ulinfo {
				background-Color: white;
				border-left: 1px solid #D1D1D1;
				border-right: 1px solid #D1D1D1;
				border-bottom: 1px solid #D1D1D1;
				box-shadow: 0px 0px 5px #D1D1D1;
				width: 160px;
				margin-left: -20px;
				color: Black;
				display: none;
			}
			
			.headerlitools_ulinfo>li {
				height: 35px;
				background-color: White;
				padding: 0px 10px;
				font-size: 14px;
				line-height: 36px;
			}
			
			.headerlitools_ulinfo>li:hover {
				background-Color: #FEE188;
			}
			
			.dvcontent {
				padding: 0px 20px;
				margin: 45px auto 0px auto;
				overflow: auto;
			}
			
			.dvpagerecord {
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				float: left;
				border: 1px solid #D9D9D9;
				text-decoration: underline;
				font-size: 14px;
				cursor: pointer;
			}
			
			.dvpagerecord:hover {
				cursor: pointer;
			}
			
			.dvpagerecord:hover i {
				text-decoration: underline;
			}
			
			.ulpageRecord {
				max-width: 165px;
				float: left;
				white-space: nowrap;
				overflow: hidden;
				margin: 0px;
				padding: 0px;
			}
			
			.ulpageRecord li {
				margin: 0px;
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				display: inline-block;
				font-size: 14px;
				border: 1px solid #D9D9D9;
			}
			
			.ulpageRecord li:hover {
				text-decoration: underline;
				cursor: pointer;
			}
			
			.currentPage {
				background-color: #2468a9 !important;
				color: white !important;
			}
			
			#warn {
				width: 300px;
			}
			
			#warn tr {
				width: 300px;
				height: 20px;
			}
			
			#warn tr td {
				width: 90px;
				height: 20px;
				text-align: center;
			}
			
			iframe {
				border: none;
			}
		</style>
		<link href="css/zy.menu.css" rel="stylesheet" />
</head>
<body style="background-color:#f2f9fd;">
    <form id="form1" runat="server">
   <div class="dvheader">
			<div class="dvheadertools">
				<span class="headerspantitle">网站管理系统后台</span>
				<div class="headerultools">
                    <asp:Image ID="Image1" runat="server" CssClass="radius-circle rotate-hover" Height ="40"/>&nbsp;&nbsp;
                    <span>用户:<asp:Label ID="Label1" runat="server" Text="Label" Width="60"></asp:Label></span>
					<a class="button button-little bg-green" href= "../Default.aspx" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
                    <a href="index.aspx" class="button button-little bg-blue"><span class="icon-wrench"></span> 后台首页</a> &nbsp;&nbsp;
                    <a class="button button-little bg-red" href="login.aspx"><span class="icon-power-off"></span> 退出登录</a> 
                </div>
			    
            </div>
    </div>
		<div class="dvcontent">
			<ul class="ulleftmenu" style="border-right: 1px solid #ddd;">

				<li class="limenuitem">
					<i class="icon-cog menuicon"></i>用户管理<b class="arrow icon-angle-down arrow-down"></b>
					<ul class="ulleftsubitems">
						<a href="useradd.aspx" target="right">
							<li>添加用户</li>
						</a>
						<a href="userchange.aspx" target="right">
							<li>修改密码</li>
						</a>
						<a href="useradmin.aspx" target="right">
							<li>用户管理</li>
						</a>
					</ul>
				</li>
			
                <li class="limenuitem">
					<i class="icon-cog menuicon"></i>新闻管理<b class="arrow icon-angle-down arrow-down"></b>
					<ul class="ulleftsubitems">
						<a href="Recruitadd.aspx" target="right">
							<li>添加新闻</li>
						</a>
						<a href="Recruitadmin.aspx" target="right">
							<li>新闻管理</li>
						</a>
					</ul>
				</li>

				<li class="limenuitem">
					<i class="icon-cog menuicon"></i>信息管理<b class="arrow icon-angle-down arrow-down"></b>
					<ul class="ulleftsubitems">
						<a href="messageadd.aspx" target="right">
							<li>添加信息</li>
						</a>
						<a href="messageadmin.aspx" target="right">
							<li>信息管理</li>
						</a>
					</ul>
				</li>
			</ul>
			<div style="position: absolute; left: 191px; right: 20px; ">
				<iframe src="Backstage.aspx" scrolling="no"  width="100%" height="11250" name="right" border="none"></iframe>
			</div>
		</div>
		<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
		<script src="js/_layout.js"></script>
    </form>
</body>
</html>