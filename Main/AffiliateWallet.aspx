<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateWallet.aspx.cs" Inherits="AffiliateWallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style-responsive.css" rel="stylesheet" />
   <link href="css/style-default.css" rel="stylesheet" id="style_color" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
<div class="container-fluid">
<div class="row-fluid" >
                <div class="span12">
                 <div id="theme-change" class="hidden-phone">
                       <i class="icon-cogs"></i>
                        <span class="settings">
                            <span class="text">Theme Color:</span>
                            <span class="colors">
                                <span class="color-default" data-style="default"></span>
                                <span class="color-green" data-style="green"></span>
                                <span class="color-gray" data-style="gray"></span>
                                <span class="color-purple" data-style="purple"></span>
                                <span class="color-red" data-style="red"></span>
                            </span>
                        </span>
                   </div>
                 <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                     My Wallet
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li class="active">
                           My Wallet
                       </li>
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
                   </div> 

                     <!-- BEGIN BLOG PORTLET-->

                     <div class="row-fluid"  style="min-height:1080px;background-color:White">
                     <div class="sapn12">
                         <div class="span10">
                             <div class="row-fluid" >

                                 
                                 <!--<asp:Repeater ID="Repeater1" runat="server">
            
            <HeaderTemplate>
            <div class="row-fluid">
                 <ul class="metro_tmtimeline">
            </HeaderTemplate>
            
            <ItemTemplate>
            <li class="green">
                            <div class="metro_tmicon" style="left:5%">
                                
                            </div>
                            <div class="metro_tmlabel" style="margin-left:10%">
                               
                               <div class="blog" style="width:100%">
                                     <div class="span3 orange" style="margin-top:10%">
                                         <a href="javascript:;" class="blog-features date active" style="height:65px;padding:1px">
                                             <p style="vertical-align:middle"><%#DataBinder.Eval(Container,"DataItem.Type") %></p>
                                         </a>
                                         <a href="javascript:;" class="blog-features comments active" style="height:65px;padding:1px">
                                             
                                             <i class=" icon-time" style="position:relative;margin-top:0px"></i>
                                             <p class="info" style="font-size:smaller"><%#Eval("StartDate","{0:dd-MMM}") %> to <%#Eval("EndDate","{0:dd-MMM}") %></p>
                                         </a>
                                         <a href="javascript:;" class="blog-features comments active" style="height:65px;padding:1px">
                                             <i class=" icon-dollar"></i>
                                             <p class="info">Rs. <%# DataBinder.Eval(Container,"DataItem.BaseValue") %> each</p>
                                         </a>
                                         
                                             <asp:LinkButton ID="btnRequest" runat="server" class="blog-features comments active span12" style="height:65px;padding:1px;white-space:normal" OnClick="btnRequest_Click" CommandArgument='<%#Eval("CampaignID") %>'></asp:LinkButton>
                                         
                                         
                                         
                                     </div>
                                     <div class="span8">
                                         <h2 style="color:White">
                                             <%# DataBinder.Eval(Container,"DataItem.Name") %>
                                         </h2>
                                         <p>
                                            <div> BY <a href="javascript:;" class="author">
                                                <asp:Label ID="lblCompanyName" runat="server" Text='<%#Eval("CompanyName") %>'></asp:Label></a>|
                                            
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CampaignID") %>' />
                                            <%--<asp:LinkButton runat="server" ID="btnFav" CssClass="btn btn-info" Text="Add Company To Favourites"></asp:LinkButton>--%></div>
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px"/>
                                         Number Of Coupons:  <asp:Label ID="lblNoOfCoupons" runat="server" Text=""></asp:Label>
                                     </div>
                                     
                                 </div> 
                            </div>
                        </li>
            </ItemTemplate>

            
            <FooterTemplate>
            </ul>
            </div>
            </FooterTemplate>
            
            </asp:Repeater>-->
                                 <asp:Repeater ID="campaigns1" runat="server">
               
               <ItemTemplate>
               <div class="span4" style="margin-left:0px">
                <div class="pricing-table terques " style="height:600px;margin:2%">
                <div class="pricing-head" >
                   <h3 style="width:90%"><b><%#Eval("Name") %> by <%#Eval("CompanyName") %></b></h3>
                    
                </div>
                <h4 style="padding:2%">
                <span class="note"><img src='<%#Eval("ImagePath") %> 'style="height:100px;width:250px"/></span>
                </h4>
                <ul>
                    <li><strong>Category:<%#Eval("CategoryName") %></strong></li>
                    <li><strong>Type:<%#Eval("Type") %></strong></li>
                    <li><strong><%#Eval("Description") %></strong></li>
                    <li><strong>Started on:<%#Eval("StartDate","{0:dd-MMM}") %></strong></li>
                    <li><strong>Ends on:<%#Eval("EndDate","{0:dd-MMM}") %></strong></li>
                    <li><strong>Cost:<%#Eval("BaseValue") %></strong></li>
                    <li><strong>Number Of Coupons:<asp:Label ID="lblNoOfCoupons" runat="server" Text=""></asp:Label></strong></li>
                    
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CampaignID") %>' />
                    <asp:LinkButton ID="btnRequest" runat="server" class="btn btn-edit" style="margin-top:3%" OnClick="btnRequest_Click" CommandArgument='<%#Eval("CampaignID") %>'></asp:LinkButton>
                </ul>
               
                </div>
                
                </div>
                
                </ItemTemplate>
               
            </asp:Repeater>
                               
                             </div>
                         </div>
                         <%--<div class="span3">
                             <div class="blog-side-bar blue-box">
                                <h2> <i class=" icon-tasks"></i> category</h2>
                                 <ul>
                                     <li>
                                         <a href="#">
                                             <i class=" icon-star"></i>
                                             <span>Food</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class=" icon-star"></i>
                                             <span>Clothing</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>Electronics</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>FootWear</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>Home Decor</span>
                                         </a>
                                     </li>
                                    
                                 </ul>
                             </div>
                            
                             
                            
                         </div>--%>
                     </div>
                     </div>
                     
                     <!-- END BLOG PORTLET-->
                
             </div>

</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.mywallet')._addClass('active');
    });
</script>
</asp:Content>

