<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyCouponRequest.aspx.cs" Inherits="CompanyCouponRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                    Coupon Requests
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="Campaigns.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       
                       <li class="active">
                           Coupon Requests
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            
             
            <div class="blog-side-bar green-box span10">
                <h3 style="color:White">&nbsp <i class="  icon-group"></i> &nbsp &nbsp All Affiliates </h3>
                <div class="space20"></div>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="row-fluid" style="color:Black">
                        <div class="green-box-blog">
                            <div class="span2">
                                <img alt="" src='<%# Eval("Photo") %>'>
                            </div>
                            <div class="span9" style="font-weight:bold">
                                
                                <strong>
                                <h4>
                                    <a href='<%# "CustomerViewProfile.aspx?ID=" + Eval("AppUserID") %>'><%# Eval("Name") %></a>
                                </h4>
                                </strong>
                                <p style="color:White"><strong>For <%# Eval("CampaignName") %></strong></p>
                                <asp:LinkButton ID="btnApprove" runat="server" CssClass="btn btn-success" OnClick="btnApprove_Click" CommandArgument='<%#Eval("CouponRequestID") %>' style="width:18%"><i class="icon-check-sign"></i>&nbsp Approve</asp:LinkButton>
                            <asp:LinkButton ID="btnReject" runat="server" CssClass="btn btn-danger" OnClick="btnReject_Click" CommandArgument='<%#Eval("CouponRequestID") %>' style="width:18%"><i class="icon-remove"></i>&nbsp Reject</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                <div class="space10"></div>
                </ItemTemplate>
                </asp:Repeater>                 
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.couponRequests')._addClass('active');
    });
</script>
</asp:Content>

