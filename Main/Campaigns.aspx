<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="Campaigns.aspx.cs" Inherits="Campaigns" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<strong>
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                       Campaigns
                   </h3>
                   <ul class="breadcrumb">
                       <li class="active">
                          All Campaigns
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
           <!-- <div class="row-fluid">
                 <ul class="metro_tmtimeline">
                 <asp:Repeater ID="campaigns" runat="server">
                    <ItemTemplate>
                        <li class="green">
                            <div class="metro_tmtime" <%--datetime="2013-04-10 18:30"--%>>
                                <span class="time"><%# Eval("EndDate", "{0:dd-MMM}")%></span>
                               <%-- <span class="time">17:20</span>--%>
                            </div>
                            <div class="metro_tmicon">
                                <i class="icon-bell"></i>
                            </div>
                            <div class="metro_tmlabel">
                                <div class="blog">
                                     <div class="span2" style="width:100px">
                                         <a href="javascript:;" class="blog-features date" style="width:100px; height:100px">
                                             <p class="day"><%# Eval("StartDate", "{0:dd-MMM}")%></p>
                                             <p class="month">Start Date</p>
                                         </a>
                                         <a href="javascript:;" class="blog-features date" style="width:100px; height:100px">
                                             <p class="day"><%# Eval("EndDate", "{0:dd-MMM}")%></p>
                                             <p class="month">End Date</p>
                                         </a>
                                         <a href="javascript:;" class="blog-features date" style="width:100px; height:100px">
                                             <p class="day"><%# Eval("NumberOfCoupons")%></p>
                                             <p class="month">Coupons</p>
                                         </a>
                                         <a href='<%# "CompanyCampaignReports.aspx?ID=" + Eval("CampaignID") %>' class="blog-features comments" style="width:100px; height:100px">
                                             <i class=" icon-bar-chart"></i>
                                             <p class="info">Progress</p>
                                        </a>

                                     </div>
                                     <div class="span8" style="float:left; padding-left:30px">
                                         <h2>
                                             <a href="blog_details.html"><%# Eval("Name") %></a>
                                         </h2>
                                         <%--<p>
                                             BY <a href="javascript:;" class="author">METRO LAB</a> |  MONDAY, 12:30 PM
                                         </p>--%>
                                         <img alt="" src='<%# Eval("ImagePath") %>' style="width:500px; height:325px">
                                         Distribution Start Date : <%# Eval("DistributionStartDate", "{0:dd-MM-yyyy}")%><br />
                                         Purchase Value : <%# Eval("BaseValue") %><br />
                                         Type : <%# Eval("Type") %>
                                               <div class="space10"></div>
                                         <%--<asp:LinkButton ID="btnEditCampaign" runat="server" class="btn green" PostBackUrl='<%# "EditCampaign.aspx?ID=" + Eval("CampaignID") %>'><i class="icon-edit"></i> Edit Campaign Details</asp:LinkButton>--%>
                                         <asp:LinkButton ID="LinkButton1" runat="server" class="btn green" PostBackUrl='<%# "CompanyDistributeCoupons.aspx?ID=" + Eval("CampaignID") %>'><i class="icon-list-alt"></i> Distribute Coupons</asp:LinkButton>
                                     </div>
                                 </div>
                            </div>
                        </li>
                         </ItemTemplate>
                     </asp:Repeater>
            
                    </ul>
            </div>-->
            <div class="space15"></div>
          <%--<div class="span3">
                                     <div class="pricing-table green most-popular">
                                         <div class="pricing-head ">
                                             <h3> Business </h3>
                                             <h4>
                                                 <span class="note">$</span>60 <span>Per Month</span></h4>
                                         </div>
                                         <ul>
                                             <li><strong>Free</strong> setup</li>
                                             <li><strong>10</strong> Website</li>
                                             <li><strong>20</strong> Projects</li>
                                             <li><strong>Unlimited</strong> Storage</li>
                                             <li><strong>$50</strong> Google Adwords Credit</li>
                                         </ul>
                                         <div class="price-actions">
                                             <a href="javascript:;" class="btn">Purchase Now</a>
                                         </div>
                                     </div>
                                 </div>--%>
            <asp:Repeater ID="campaigns1" runat="server">
               
               <ItemTemplate>
               <div class="span3">
                <div class="pricing-table terques">
                <div class="pricing-head">
                   <h3><b><%#Eval("Name") %></b></h3>
                    
                </div>
                <h4 style="padding:2%">
                <span class="note"><img src='<%#Eval("ImagePath") %> '/></span>
                </h4>
                <ul>
                   <%-- <li><strong><%#Eval("Description") %></strong></li>--%>
                    <li>Category: <strong><%#Eval("CategoryName") %></strong></li>
                    <li><strong>Start Date : <%#Eval("StartDate","{0:dd-MMM-yyyy}") %>
                                <br />
                                End Date : <%#Eval("EndDate","{0:dd-MMM-yyyy}") %></strong></li>
                    
                   
                    <li><strong>Number of Coupons : <%#Eval("NumberOfCoupons") %></strong></li>
                    <li><strong>Cost : <%#Eval("BaseValue") %>/-</strong></li>
                    <li><strong><asp:Label ID="lblType" runat="server" Text=""></asp:Label></strong></li>
                    <li><strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn green" style="width:70%" PostBackUrl='<%# "CompanyTrackCoupons.aspx?ID=" + Eval("CampaignID") %>'> Track Coupons </asp:LinkButton>
                    <div class="space10"></div>
                    <a href='<%# "CompanyCampaignReports.aspx?ID=" + Eval("CampaignID") %>' style="width:70%" class="btn green">View Progress</a></strong></li>
                </ul>
               
                </div>
                
                </div>
                
                </ItemTemplate>
               
            </asp:Repeater>
  </strong>        
   <h4 style="color:red">
<asp:Label ID="hiddenLabel" runat="server" Text=" "/>
</h4>       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.home')._addClass('active');
    });
</script>
</asp:Content>
