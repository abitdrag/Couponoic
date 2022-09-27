<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyActivCampaigns.aspx.cs" Inherits="CompanyActivCampaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/timeline-component.css" rel="stylesheet"  type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="row-fluid">
               <div class="span12">
                  
                   <h3 class="page-title">
                       Campaigns
                   </h3>
                   <ul class="breadcrumb">
                       <li class="active">
                          All Active Campaigns
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
           
            <asp:Repeater ID="campaigns1" runat="server">
               
               <ItemTemplate>
               <div class="span3">
                <div class="pricing-table green" style="height:550px;margin:2.5%">
                <div class="pricing-head">
                   <h3><b><%#Eval("Name") %></b></h3>
                    
                </div>
                <h4 style="padding:2%">
                <span class="note"><img src='<%#Eval("ImagePath") %> '/></span>
                </h4>
                <ul>
                    <li><strong><%#Eval("Description") %></strong></li>
                    <li><strong>Started on : <%#Eval("StartDate","{0:dd-MMM-yyyy}") %>
                    <br/>Ends on : <%#Eval("EndDate","{0:dd-MMM-yyyy}") %></strong></li>
                    
                    <li><strong>Number of Coupons : <%#Eval("NumberOfCoupons") %></strong></li>
                    <li><strong>Cost : <%#Eval("BaseValue") %> /-</strong></li>
                    <li><strong><a href='<%# "CompanyCampaignReports.aspx?ID=" + Eval("CampaignID") %>' style="color:White">  View Progress  </a></strong></li>
                    <asp:LinkButton ID="LinkButton1" class="btn green" runat="server" style="margin:1%;width:70%; margin-top:2%"  PostBackUrl='<%# "CompanyDistributeCoupons.aspx?ID=" + Eval("CampaignID") %>'><i class="icon-list-alt"></i> Distribute Coupons</asp:LinkButton>
                    <asp:LinkButton ID="btnEditCampaign" class="btn green" style="margin:1%;width:70%; margin-bottom:2%" runat="server"  PostBackUrl='<%# "CompanyTrackCoupons.aspx?ID=" + Eval("CampaignID") %>'><i class="icon-list"></i> Track Coupons </asp:LinkButton>
                </ul>
               
                </div>
                
                </div>
                
                </ItemTemplate>
               
            </asp:Repeater>

<h4 style="color:red">
<asp:Label ID="hiddenLabel" runat="server" Text=" "/>
</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
   <script type="text/javascript">
       $(document).ready(function () {
           $('.sub-menu')._removeClass('active');
           $('.campaigns')._addClass('active');
           $('.activeCampaign')._addClass('active');

       });
    </script>
</asp:Content>

