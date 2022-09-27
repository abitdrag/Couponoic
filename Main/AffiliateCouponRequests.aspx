<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateCouponRequests.aspx.cs" Inherits="AffiliateCouponRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content" style="min-height:500px">
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->   
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
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
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                    Coupon Requests
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
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
            <div><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager></div>
             <div >
               <asp:UpdatePanel ID="Update1" runat="server"> 
               <ContentTemplate>
               <asp:Repeater ID="Repeater1" runat="server">
               
              
                <ItemTemplate>
                    <div class="widget gray-full span4">
                        <div class="widget-body">
                           <span class="span3" style="height:100%"><img src='<%# Eval("Photo") %>'/></span> 
                            <div>
                            <b><%# Eval("CustomerName")%></b> <br />
                            <b>For</b> <%# Eval("Name") %><br />
                            <span class="span2"></span>&nbsp &nbsp &nbsp Ends on <%#Eval("EndDate","{0:dd-MMM}") %><br />
                            <asp:LinkButton ID="btnApprove" runat="server" CssClass="btn btn-success" OnClick="btnApprove_Click" CommandArgument='<%#Eval("CouponID") %>'><i class="icon-check-sign"></i>&nbsp Approve</asp:LinkButton>
                            <asp:LinkButton ID="btnReject" runat="server" CssClass="btn btn-danger" OnClick="btnReject_Click" CommandArgument='<%#Eval("CouponID") %>'><i class="icon-remove"></i>&nbsp Reject</asp:LinkButton>
                            </div>
                            
                            </div>
                    </div>
                     
                </ItemTemplate>
                
               </asp:Repeater>
                <asp:Label ID="lbl" runat="server"></asp:Label>
               </ContentTemplate> 
              </asp:UpdatePanel>
             </div>
            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.couponrequest')._addClass('active');
    });
</script>
</asp:Content>

