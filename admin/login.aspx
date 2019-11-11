<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_admin1_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>        
        <script src="assets/layer/layer.js" type="text/javascript"></script>
        <title>登录</title>
</head>
<body class="login-layout Reg_log_style">
    <form id="form1" runat="server">
    <div class="loginbody">
        <div class="login-container">
            <div class="space-6"></div>
            <div class="position-relative">
                <div id="login-box" class="login-box widget-box no-border visible">
                    <div class="widget-body">
                        <div class="widget-main">
                            <h4 class="header blue lighter bigger"><i class="icon-coffee green"></i>管理员登录</h4>
                            <div class="login_icon"><img src="images/login.png" alt="" /></div>			
	                        <fieldset>
                            <ul>
                               <li class="frame_style form_error"><label class="user_icon"></label>
                               <asp:TextBox ID="username" runat="server"></asp:TextBox>
                               <i>用户名</i>
                               </li>
                               <li class="frame_style form_error"><label class="password_icon"></label>
                               <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                               <i>密码</i>
                               </li>
                               <li class="frame_style form_error"><label class="Codes_icon"></label>
                                <asp:TextBox ID="code" runat="server" Height="33px" Width="80px"></asp:TextBox>&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="zz">看不清</asp:LinkButton>
                                <i>验证码</i><div class="Codes_region"><asp:Image Runat="server" ID="ImageCheck" 
                                           ImageUrl="ValidateCode.aspx" CssClass="image" Height="40px" Width="80px" ></asp:Image>&nbsp;</div>
                               </li>
                            </ul>
                            <div class="space"></div>
                            <div class="clearfix">
                                <asp:Button ID="login_btn" runat="server" Text="登录" 
                                    CssClass="width-35 pull-right btn btn-sm btn-primary" 
                                    onclick="login_btn_Click" />
                                 
                            </div>
                            <div class="space-4"></div>
                            </fieldset>
                            <div class="social-or-login center"><span class="bigger-110">通知</span></div>
                            <div class="social-login center">本网站系统不再对IE8以下浏览器支持，请见谅。</div>
                        </div><!-- /widget-main -->
                    <div class="toolbar clearfix"></div>
                    </div><!-- /widget-body -->
                </div><!-- /login-box -->
            </div><!-- /position-relative -->
        </div>
    </div>                
</form>
</body>
</html>

<script>
$('#login_btn').on('click', function(){
	     var num=0;
		 var str="";
     $("input[type$='text'],input[type$='password']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
	});
  $(document).ready(function(){
	 $("input[type='text'],input[type='password']").blur(function(){
        var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_error');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_error');
        }
    });
	$("input[type='text'],input[type='password']").focus(function(){		
		var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_errors');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_errors');
        } else{
			 $parent.attr('class','frame_style').removeClass(' form_errors');
		}
		});
	  })

</script>