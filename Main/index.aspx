<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<title>Couponoic</title>
    
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
	<!-- CSS Styles -->
    <link rel="stylesheet" type="text/css" href="Landing/css/skeleton.css">	
	<link rel="stylesheet" type="text/css" href="Landing/css/layout-white.css">
    <link rel="stylesheet" type="text/css" href="Landing/css/prettyPhoto.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/contact-form.css">

    <!-- Favicons -->
    <link rel="Shortcut Icon" href="img/logo/icon.ico" />
    <link rel="apple-touch-icon" href="Landing/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="Landing/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="Landing/images/apple-touch-icon-114x114.png">

	<!-- Google Web Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Shadows+Into+Light|Oswald:400,300,700" rel="stylesheet" type="text/css">
    
    <!-- JavaScripts -->
    <script type="text/javascript" src="Landing/js/prefixfree.min.js"></script>
	<script type="text/javascript" src="Landing/js/modernizr-2.6.2.js"></script>
    <script type="text/javascript" src="Landing/js/iOS-timer.js"></script>
    <script type="text/javascript" src="Landing/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="Landing/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="Landing/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="Landing/js/jquery.isotope.run.js"></script>
    <!--script type="text/javascript" src="Landing/js/jquery.easing.min.js"></script-->
    <script type="text/javascript" src="Landing/js/jquery.mobile-touch-swipe-1.0.js"></script>
    <!--script type="text/javascript" src="Landing/js/jquery.lazyload.js"></script-->
    <!--script type="text/javascript" src="Landing/js/jquery.flexslider.js"></script-->
    <!--script type="text/javascript" src="Landing/js/jquery.parallax-1.1.3.js"></script-->
    <script type="text/javascript" src="Landing/js/supersized.3.2.7.min.js"></script>
    <script type="text/javascript" src="Landing/js/supersized.shutter.min.js"></script>
    <script type="text/javascript" src="Landing/js/custom.js"></script>
    <script type="text/javascript" src="Landing/js/contact_form.js"></script>
    <script type="text/javascript" src="Landing/js/tooltip.js"></script>
    <script type="text/javascript" src="Landing/js/jquery.sticky.js"></script>


	<script type="text/javascript">

	    var isMobile = false;

	    if (navigator.userAgent.match(/Android/i) ||
				navigator.userAgent.match(/webOS/i) ||
				navigator.userAgent.match(/iPhone/i) ||
				navigator.userAgent.match(/iPad/i) ||
				navigator.userAgent.match(/iPod/i) ||
				navigator.userAgent.match(/BlackBerry/i)) {

	        isMobile = true;

	    }

	    /*iOS5 fixed-menu fix*/
	    var iOS5 = false;

	    if (navigator.userAgent.match(/OS 5(_\d)+ like Mac OS X/i)) {

	        iOS5 = true;

	    }
		
			
	</script>
    

    
	<script>
	    $(document).ready(function () {
	        $("nav").sticky({ topSpacing: 0 });
	    });
	</script>



	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine2/style.css" />
	<script type="text/javascript" src="engine2/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->
    </head>
<body>
<form id="form1" runat="server">
<!-- Start Navigation -->
<div style="height: 50px;" class="sticky-wrapper is-sticky" id="undefined-sticky-wrapper">
<nav style="position: fixed; top: 0px;background-color:#4A8BC2">

	    
	
		<div class="container">
			
			<div class="sixteen columns">
				<!-- Start Nav Menu -->
				<ul class="menu" id="nav">
					<li><a href="#wowslider-container2">Home</a></li>
                    <li><a href="#about">About</a></li>
					<li><a href="#offers">Offers</a></li>
                    <li><a href="#login">Login</a></li>
					<li><a href="#signup">Signup</a></li>
				</ul>
				<!-- End Nav Menu -->
				<!-- Start Dropmenu for mobile -->		
				<select class="dropmenu" name="dropmenu" onChange="moveTo(this.value)">
					<option value="" selected="selected">Menu</option>
					<option value="#homepage">Home</option>
				    <option value="#about">About</option>
					<option value="#offers">Offers</option> 
					<option value="#login">Login</option> 
					<option value="#signup">signup</option> 
				</select>
				
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
						
			</div>
	
		</div>
	
        
	</nav>
    
</div>
<div style="height:60px">
    <center><asp:Label ID="lblSuccess" runat="server" Visible="false"><h2>Registration Successful!!<a href="">Login</a> to continue.</h2></asp:Label></center>
    <asp:Label ID="lblCompany" runat="server" Visible="false"><h2>Your registration request will be approved once we have verified the details.</h2></asp:Label>
    </div>
<!-- End Navigation -->	
<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container2">
	<div class="ws_images"><ul>
		<li><img src="data2/images/adidas.jpg" alt="" title="" id="wows2_0"/></li>
		<li><img src="data2/images/bigbazaar.jpg" alt="" title="" id="wows2_1"/></li>
		<li><img src="data2/images/company1.png" alt="" title="" id="wows2_2"/></li>
		<li><img src="data2/images/company10.png" alt="" title="" id="wows2_3"/></li>
		<li><img src="data2/images/company11.png" alt="" title="" id="wows2_4"/></li>
		<li><img src="data2/images/company12.png" alt="" title="" id="wows2_5"/></li>
		<li><img src="data2/images/company2.png" alt="" title="" id="wows2_6"/></li>
		<li><img src="data2/images/dell.jpg" alt="" title="" id="wows2_7"/></li>
		<li><img src="data2/images/dominos.jpg" alt="" title="" id="wows2_8"/></li>
		<li><img src="data2/images/mcd.jpg" alt="" title="" id="wows2_9"/></li>
		<li><img src="data2/images/nike.jpg" alt="" title="" id="wows2_10"/></li>
		<li><a href="http://wowslider.com/vi"><img src="data2/images/pantaloons.jpg" alt="carousel slider" title="" id="wows2_11"/></a></li>
		<li><img src="data2/images/puma.jpg" alt="" title="" id="wows2_12"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="data2/tooltips/adidas.jpg" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/bigbazaar.jpg" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/company1.png" alt=""/>3</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/company10.png" alt=""/>4</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/company11.png" alt=""/>5</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/company12.png" alt=""/>6</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/company2.png" alt=""/>7</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/dell.jpg" alt=""/>8</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/dominos.jpg" alt=""/>9</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/mcd.jpg" alt=""/>10</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/nike.jpg" alt=""/>11</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/pantaloons.jpg" alt=""/>12</span></a>
		<a href="#" title=""><span><img src="data2/tooltips/puma.jpg" alt=""/>13</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">wordpress slider</a> by WOWSlider.com v7.9</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="engine2/wowslider.js"></script>
	<script type="text/javascript" src="engine2/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
	<!-- End Dropmenu for mobile -->

     
<!--start portfolio -->
     <div id="folio" class="page section">
        
    	
     </div>
<!--end portfolio-->       
     
<!--start About -->
     <div id="about" class="page section">
     
        <div class="container aboutContainer">
        
            <div class="sixteen columns">
            	<h1><span style="color:Blue">About<br /></span>Couponoic</h1>
                <h3><span class="smallBold">One stop</span> <span class="small">destination for all offers.</span>
                <br><span class="mediumBold">We bring a personal</span> <span class="medium">and effective approach</span>
                <br><span class="medium">to bring together companies and customers,</span><span class="mediumBold">which is why</span>
                <br><span class="large">our clients </span> <span class="largeBold">prefers us</span>
                <br><span class="medium">and why they keep</span><span class="mediumBold"> coming back.</span> 
                </h3>
            </div>
            
            <div class="sixteen columns">
            	<h3 class="sectionTitle">Our Numbers</h3>
            </div>
            
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber">20+</p>
                        <p class="statText">Companies</p>
                    </div>
                </div>
            </div>
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber">100+</p>
                        <p class="statText">Offers</p>
                    </div>
                </div>
            </div>
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber">500+</p>
                        <p class="statText">Coupons</p>
                    </div>
                </div>
            </div>
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber statNumberMedium">200+</p>
                        <p class="statText">Franchisees</p>
                    </div>
                </div>
            </div>
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber">200+</p>
                        <p class="statText">Agents</p>
                    </div>
                </div>
            </div>
            <div class="statsWrap">
            	<div class="stats">
                    <div class="statDummy"></div>
                    <div class="statInfo">
                        <p class="statNumber statNumberSmall">AND</p>
                        <p class="statText">Still counting</p>
                    </div>
                </div>
            </div>
            
            
     	</div>
        
        <!--start parallax 2-->
         <div id="parallax-2" class="parallax fixed" style="background-image: url(Landing/images/quote.jpg);">
             <div class="quoteWrap">
				<div class="quote">
                	<div class="container">
                        <div class="sixteen columns">
                            <h3><span class="smallBold">Whoever said</span> <span class="small">money can't</span>
                            <br><span class="large">buy</span> <span class="largeBold">happiness,</span>
                            <br><span class="medium">simply din't know</span><span class="mediumBold"> where to go shopping.</span> 
                            <br><span class="author">Bo Derek</span></h3>
                        </div>
                    </div>  
				</div>
             </div>
         </div>
       <!--end parallax 2-->
        
     </div>
 <!--end about--> 
    
    
 <!--start Services -->
     <div id="offers" class="page section" style="height:1300px">
     
        <div class="container servicesContainer">
        
             <div class="sixteen columns">
             	<h1><span style="color:Blue">Our</span><br/>Offers</h1>
                <h3><span class="mediumBold">We have a</span> <span class="medium">unique</span>
                <br><span class="medium">collection of companies and offers</span> <span class="mediumBold">to cater</span>
                <br><span class="large">to all your needs</span> <span class="largeBold">and applicable</span>
                <br><span class="medium">on a number of</span> <span class="mediumBold">services.</span> 
                </h3>
            </div>
        </div>
        
        <div id="parallax-3" class="parallax fixed" style="background-image: url(Landing/images/Discounts.jpg); background-position:center;background-size:100%">
             <div class="quoteWrap">
				<div class="quote">
                	<div class="container" >
                        <div class="sixteen columns" >
                            <div class="one-third column" style="width:30%">
                <div class="serviceItem clothing">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>Clothing</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one-third column" style="width:30%">
                <div class="serviceItem footwear">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>Footwear</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one-third column" style="width:30%">
                <div class="serviceItem electronics">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>Electronics</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one-third column" style="width:30%">
                <div class="serviceItem food">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>Food</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one-third column" style="width:30%">
                <div class="serviceItem grocery">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>Grocery</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one-third column" style="width:30%">
                <div class="serviceItem more">
                    <div class="serviceInfoWrap">
                        <div class="serviceInfo">
                            <div class="serviceInfoFront"></div>
                            <div class="serviceInfoBack">
                                <div class="serviceIcon"></div>
                                <h3>And many more</h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        </div>
                    </div>  
				</div>
             </div>
         </div>
            
            
            
     	
        
        <!--start parallax 3-->
         
             
        
     </div>
<!--end services-->  
    
    
<!--start Features -->
     <div id="features" class="page section">
        
     </div>
<!--end Features-->  
    
<!--start contact-->
     <div id="contact" class="page section" style="padding-top:0px;margin-top:0px">
     
        <h2></h2>
        <div class="container contactContainer">
        <center><h2><span class="smallBold">Enter the world of</span>&nbsp Couponoic &nbsp<span class="small">to find amazing deals</span></center>
        	<div class="sixteen columns">
             
            	<div class="one-third column" style="width:45%;margin-right:3%;border-right:3px solid" id="login">
                   <center> <h3>LOGIN</h3>
                  
                    <div class="c-form" style="border-radius:25px;width:80%;background-color:#4A8BC2">
                        <asp:TextBox ID="txtUsername" placeholder="Username" required runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" required runat="server"></asp:TextBox>
                        <asp:LinkButton ID="btnLogin" runat="server" Text="Login" Cssclass="button" style="background-color:InfoText;width:30%" onclick="btnLogin_Click"></asp:LinkButton>
                    </div>
                    </center>
                </div>
              
              
                <div class="one-third column" style="width:45%;;" id="signup">
                   <center> <h3>SIGNUP</h3>
                  <h2> <a href="Registration.aspx">Proceed with Registration</a></h2>
                   </center>
               </div> 
             
            
   	        </div>
        
    </div>    

    </div>
<!--start footer-->
    <div id="footer">
    
        </div>
  
<!--end footer-->

<script type="text/javascript">
    function moveTo(contentArea) {
        var goPosition = $(contentArea).offset().top;
        $('html,body').animate({ scrollTop: goPosition }, 'slow');
    }
</script>

<script type="text/javascript">
    $('#carouselSlider').flexslider({
        animation: "slide",
        animationLoop: true,
        itemWidth: 237,
        itemMargin: 2,
        start: function (slider) {
            $('body').removeClass('loading');
        }
    });
</script>

<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {

        $("a[rel^='prettyPhoto']").prettyPhoto({ animation_speed: 'normal', slideshow: 6000 });
        $(".contactDetails a[rel^='prettyPhoto']:first").prettyPhoto({
            custom_markup: '<div id="map_canvas" style="width:500px; height:500px"></div>',
            changepicturecallback: function () { initialize(); }
        });
    });
</script>
</form>
</body>
</html>
