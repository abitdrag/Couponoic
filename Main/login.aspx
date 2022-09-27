<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta charset="utf-8" />
   <title>Login</title>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style-responsive.css" rel="stylesheet" />
   <link href="css/style-default.css" rel="stylesheet" id="style_color" />
</head>
<body class="lock" style="background-image:url('assets/bg5.jpg')">
    <form id="loginForm" method="get" runat="server" style="margin:0px">
        <div class="lock-header" style="margin-top:2%">
        <!-- BEGIN LOGO -->
         <a class="center" id="logo" href="Welcome.aspx">
            <img class="center" alt="Couponoic" src="assets/logo.jpg"/>
        </a>
        <!-- END LOGO -->
    </div>
    <div class="login-wrap" style="margin-top:2%">
        <div class="metro single-size red">
            <div class="locked">
                <i class="icon-lock"></i>
           
            </div>
        </div>
        <div class="metro double-size green">
            <div>
                <div class="input-append lock-input">
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="metro double-size yellow">
            <div>
                <div class="input-append lock-input">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="metro single-size terques login">
         
            
            <asp:Button ID="btnLogin" runat="server" Text="Login" Cssclass="btn login-btn" onclick="btnLogin_Click"/>
            
        </div>
        <div class="metro double-size navy-blue ">
            <a href="#" class="social-link">
                
            </a>
        </div>
        <div class="metro single-size deep-red">
            <a href="#" class="social-link">
                
            </a>
        </div>
        <div class="metro double-size blue">
            <a href="#" class="social-link">
                
            </a>
        </div>
        <div class="metro single-size purple">
            <a href="#" class="social-link">
                
            </a>
        </div>
        
        <div class="login-footer">
            <div class="remember-hint pull-left">
                <input type="checkbox" id=""> Remember Me
            </div>
            <div class="forgot-hint pull-right">
                <a id="forget-password" class="" href="javascript:;">Forgot Password?</a>
            </div>
        </div>
    </div>
    </form>
    <script>
    .login-wrap {
    width: 960px;
    margin: 5% auto 0;
    color: #fff;
    text-align: center;
    font-family: "MyriadPro-Light";
}

.login-wrap .metro {
    height: 150px;
    float: left;
    margin: 0 10px 10px 0;
}

.login-wrap .double-size {
    width: 310px;
}

.login-wrap .single-size {
    width: 150px;
}

.login-wrap .red {
    background: #e8687f;
}
.login-wrap .green {
    background: #90bb4f;
}
.login-wrap .yellow {
    background: #f5c147;
}
.login-wrap .terques {
    background: #38bec9;
}
.login-wrap .navy-blue {
    background: #5f7cb4;
}
.login-wrap .deep-red {
    background: #993f3e;
}
.login-wrap .blue {
    background: #48b5ee;
}
.login-wrap .purple {
    background: #af5ec5;
}

.login-btn, .login-btn:hover {
    background: none;
    font-size: 28px;
    margin-top: 65px;
    font-family: "MyriadPro-Light";
    color: #fff;
}


.login-btn i {
    font-size: 22px !important;
    padding-top: 0 !important;
    display: inline !important;
}

.login-wrap .single-size a.social-link, .login-wrap .double-size a.social-link {
    margin-top: 45px;
    color: #fff;
    display: inline-block;
    text-decoration: none;
}

.login-wrap .single-size a.social-link i , .login-wrap .double-size a.social-link i{
    font-size: 20px;
    display: block;
    padding-top: 0;
    padding-bottom: 10px;
}

.login-footer {
    width: 100%;
    display: inline-block;
}

.remember-hint input[type="checkbox"]{
    margin-top: -2px;
}

.forgot-hint a{
    color: #fff;
    margin-right: 10px;
}


    </script>
</body>

</html>
