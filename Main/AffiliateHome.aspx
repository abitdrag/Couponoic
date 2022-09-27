<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateHome.aspx.cs" Inherits="AffiliateHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style-responsive.css" rel="stylesheet" />
   <link href="css/style-default.css" rel="stylesheet" id="style_color" />
   <link href="css/timeline-component.css" rel="stylesheet"  type="text/css" />


    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content" style="min-height:500px">
<div class="container-fluid">
<div class="row-fluid" <%--style="margin-left:80px"--%>>
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
                     Home
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                       </li>
                      
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
                   </div>
                     <!-- BEGIN BLOG PORTLET-->
                     <div class="row-fluid"  style="min-height:1080px;background-color:White">
                         <div class="span9">
                             <div class="row-fluid" >
                            <!--     <asp:Repeater ID="Repeater1" runat="server">
            
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
                                         <asp:HiddenField ID="hdf1" runat="server" Value='<%#Eval("CompanyID") %>' />
                                         <asp:LinkButton ID="btnRequest" runat="server" class="blog-features comments active" style="height:65px;padding:1px" CommandArgument='<%#Eval("CampaignID")%>' OnClick="btnRequest_Click" Text="Request Coupons"/>
                                         
                                     </div>
                                     <div class="span8">
                                         <h2 style="color:White">
                                             <%# DataBinder.Eval(Container,"DataItem.Name") %>
                                         </h2>
                                         <p>
                                            <div> BY <a href="javascript:;" class="author"><%# Eval("CompanyName") %></a>|<%--<asp:LinkButton runat="server" ID="btnFav" CssClass="btn btn-info" Text="Add Company To Favourites"></asp:LinkButton>--%></div>
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px"/>
                                         
                                     </div>
                                     <div class="span1">
                                         
                                         
                                     </div>
                                 </div> 
                            </div>
                        </li>
            </ItemTemplate>

            <AlternatingItemTemplate>
            <li class="purple">
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
                                         
                                         <asp:LinkButton ID="btnAffiliate" runat="server" class="blog-features comments active" style="height:65px;padding:1px" PostBackUrl='<%# "ViewAffiliates.aspx?ID="+ Eval("CampaignID") %>'>View Affiliates</asp:LinkButton>
                                         
                                     </div>
                                     <div class="span8">
                                         <h2 style="color:Purple">
                                             <%# DataBinder.Eval(Container,"DataItem.Name") %>
                                         </h2>
                                         <p>
                                            <div> BY <a href="javascript:;" class="author"><%# Eval("CompanyName") %></a>|</div>
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px"/>
                                         
                                     </div>
                                     <div class="span1">
                                         
                                         
                                     </div>
                                 </div> 
                            </div> 
                        </li>
            </AlternatingItemTemplate>
            <FooterTemplate>
            </ul>
            </div>
            </FooterTemplate>
            
            </asp:Repeater> -->
                             <asp:Repeater ID="campaigns1" runat="server">
               
               <ItemTemplate>
               <div class="span4" style="margin-left:0px">
                <div class="pricing-table terques " style="height:550px;margin:2%">
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
                   
                   <asp:LinkButton ID="btnRequest" runat="server" class="btn btn-edit" style="margin-top:5%" CommandArgument='<%#Eval("CampaignID")%>' OnClick="btnRequest_Click" Text="Request Coupons"/>
                   
                </ul>
               
                </div>
                
                </div>
                
                </ItemTemplate>
               
            </asp:Repeater>    
                               
                             </div>
                         </div>
                         
                         <div class="span3">
                             <div class="space5"></div>
                             <div class="blog-side-bar green-box" style="padding:2.5%">
                                 <h2 style="font-size:larger;color:White"> <i class="icon-building"></i> Companies You May Follow</h2>
                                 <asp:Repeater ID="Repeater2" runat="server" 
                                     onitemcommand="Repeater2_ItemCommand" EnableViewState="false" >
                                     
                                <ItemTemplate>
                                 
                                 <div id="Div1" class="row-fluid">
                                     <div class="green-box-blog" >
                                         <div class="span3" style="height:65px">
                                             <img alt="" src='<%# Eval("Photo") %>' style="height:100%"/>
                                         </div>
                                         <div class="span9">
                                             <h5>
                                                
                                                <asp:Label ID="Label1" runat="server" Text=""><a href='<%# "CompanyProfile.aspx?ID=" + Eval("AppUserID") %>'><%# Eval("Name") %></a> </asp:Label>
                                             </h5>
                                            
                                     <asp:LinkButton ID="lbtnApprove" runat="server" CssClass="btn" style="background-color:#0CA389;color:White;font-size:smaller;margin-top:10px" CommandName="Select" CommandArgument='<%# Eval("AppUserID")%>'><i class="icon-plus"></i>Add To Interest List</asp:LinkButton>                                        </div>
                                     
                                     </div>
                                 </div>
                                 <div class="space10"></div>
                                 
                                 <div class="space10"></div>
                                 
                                 <div class="space10"></div>
                                 </ItemTemplate>
                                  </asp:Repeater>
                             </div>
                             
                             
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
        $('.Home')._addClass('active');
    });
</script>

</asp:Content>

