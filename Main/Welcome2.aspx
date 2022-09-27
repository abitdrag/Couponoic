<%@ Page Title="" Language="C#" MasterPageFile="~/GuestUserMasterPage.master" AutoEventWireup="true"
    CodeFile="Welcome2.aspx.cs" Inherits="Welcome2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" style="background-color:White">
    <div class="row-fluid">
       <div class="span12">            
       <!-- BEGIN BLANK PAGE PORTLET-->
          
               <div class="row-fluid">   
                    <div class="span8" style="margin-left:50px">
                       

                    
<div id="myCarousel" class="carousel slide" style="margin-top:20px;height:200px;">
   <!-- Carousel indicators -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- Carousel items -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="uploads/Adidas.jpg" alt="First slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/BigBazaar.jpg" alt="Second slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Puma.jpg" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Nike.jpg" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Company1.png" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Company2.png" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Company10.png" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Company11.png" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Company12.png" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/Dell.JPG" alt="Third slide" style="height:200px;width:900px">
      </div>
      <div class="item">
         <img src="uploads/McD.jpg" alt="Third slide" style="height:200px;width:900px">
      </div>
   </div>
   <!-- Carousel nav -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
   
  <!-- Indicators -->
  






                       <asp:Repeater ID="rptr1" runat="server">
                       <ItemTemplate>
                        <div class="span4" style="float:left;margin-top:20px;width:250px;margin-left:30px;">
                            <div class="pricing-table terques" style= "min-height:600px">
                                <div class="pricing-head">
                                    <h3>
                                      <%#Eval("Name") %>  
                                    </h3>
                                    
                                         <img src='<%# Eval("ImagePath") %>' style=margin-left:80px"/>
                                         
                                </div>
                                <ul>
                                    <li><strong>BY | <%# Eval("CompanyName") %></strong> </li>
                                    <li><strong><%#Eval("StartDate","{0:dd-MMM}") %> to <%#Eval("EndDate","{0:dd-MMM}") %></strong></li>
                                    <li><strong>Rs. <%# DataBinder.Eval(Container,"DataItem.BaseValue") %> each</strong> </li>
                                    <li><strong>Type:<%#DataBinder.Eval(Container,"DataItem.Type") %></strong> </li>
                                    
                                </ul>
                                <div class="price-actions">
                                    <a href="javascript:;" class="btn buy">Buy Coupon</a>
                                </div>
                            </div>
                        </div>
                       <div class="spance10 visible-phone"></div>
                        </ItemTemplate>
                        </asp:Repeater>
                        </div>
                        <div class="span3" style="margin-top:20px">
                         <div class="blog-side-bar green-box">
                         <div class="row-fluid" style="width:98%">
                         
                        <a class="icon-btn span11" style="margin-left:10px" href="login.aspx" >
                            <i class="icon-group" style="background-color:White"></i>
                            <div style="color:White;margin-left:10px">Login</div>
                            
                        </a>
                        
                        <center><span class="badge badge-important">OR</span></center>
                        <a class="icon-btn span11" href="Registration.aspx" style="background-color:White">
                            <i class="icon-group"></i>
                            <div  style="color:White">Signup</div>
                            <span class="badge badge-important"></span>
                        </a>
                        
                    </div>
                         </div>
                         <div class="blog-side-bar blue-box" style="width:98%;margin-top:30px">
                        <div style="padding-top:10px;padding-left:10px;color:White"> <h4 style="color:White"><i class="icon-filter"></i> &nbsp &nbsp Filter Results &nbsp &nbsp <asp:LinkButton ID="btnReset" runat="server"  OnClick="btnReset_Click"><i class="icon-refresh" style="color:White"></i> &nbsp &nbsp Refresh Filters</asp:LinkButton></h4></div>
                      
                         <asp:Repeater ID="rptr3" runat="server">
                            <HeaderTemplate>
                            
                             <div style="padding-top:10px;padding-left:10px">   <h4 style="color:White"> <i class=" icon-tasks"></i>&nbsp &nbsp Companies</h4></div>
                                 <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                     <li style="width:45%;margin-bottom:5%">
                                         <asp:LinkButton ID="btnCompany" runat="server" OnClick="btnCompany_Click" CommandArgument='<%#Eval("Name") %>'><i class="icon-tag"></i><span><%#Eval("Name") %></span></asp:LinkButton>
                                     </li>
                             </ItemTemplate>
                             <FooterTemplate>
                             </ul>
                            
                             </FooterTemplate>
                         </asp:Repeater>
                          </div> 
                          
                             
                         </div>
                        </div>
                    </div>
                
            </div>

            <!-- END BLANK PAGE PORTLET-->
            
        
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="Server">

<script type="text/javascript">
    $(document).ready(function () {
        $(".buy").click(function () {
            alert("Login or Signup to purchase");
        });
    });


    $('.carousel').carousel({
        interval: 3000
    })

</script>


 
</asp:Content>
