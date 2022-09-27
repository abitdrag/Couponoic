<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body class="lock">




<meta charset="utf-8"><title>
	Login
</title><meta content="width=device-width, initial-scale=1.0" name="viewport"><meta name="description"><meta name="author"><link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"><link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"><link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><link href="css/style.css" rel="stylesheet"><link href="css/style-responsive.css" rel="stylesheet"><link id="style_color" href="css/style-default.css" rel="stylesheet">

    <form method="get" action="login.aspx" id="loginForm">
<div class="aspNetHidden">
<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTkyMDQ3NzQ4N2RkzKsgaQtXbvNRKFEfWwTXKPwBcajFjvW8eglIUObYV8E=" type="hidden">
</div>

<div class="aspNetHidden">

	<input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D491CA30" type="hidden">
	<input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAATxeZOUMdmWW2d0+i0DIiAgVK7BrRAtEiqu9nGFEI+jB3Y2+Mc6SrnAqio3oCKbxYainihG6d/Xh3PZm3b5AoMQ8HvHyuFe5JRQBZNFolVFnH3mN3OwSz8buOCSpq81z/Y=" type="hidden">
</div>
        <div class="lock-header">
        <!-- BEGIN LOGO -->
         <a class="center" id="logo" href="index.html">
            <img class="center" alt="Couponoic" src="">
        </a>
        <!-- END LOGO -->
    </div>
    <div class="login-wrap">
        <div class="metro single-size red">
            <div class="locked">
                <i class="icon-lock"></i>
           
            </div>
        </div>
        <div class="metro double-size green">
            <div>
                <div class="input-append lock-input">
                    <input name="txtUsername" id="txtUsername" placeholder="Username" type="text">
                </div>
            </div>
        </div>
        <div class="metro double-size yellow">
            <div>
                <div class="input-append lock-input">
                    <input name="txtPassword" id="txtPassword" placeholder="Password" type="password">
                </div>
            </div>
        </div>
        <div class="metro single-size terques login">
           
            
            <input name="btnLogin" value="Login" id="btnLogin" class="btn login-btn" type="submit">
            
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
                <input id="" type="checkbox"> Remember Me
            </div>
            <div class="forgot-hint pull-right">
                <a id="forget-password" class="" href="javascript:;">Forgot Password?</a>
            </div>
        </div>
    </div>
    </form>


</body></html>