<%@ Page Title="" Language="C#" MasterPageFile="~/FranchiseeMasterPage.master" AutoEventWireup="true" CodeFile="FranchiseeRedeemCoupon.aspx.cs" Inherits="FranchiseeRedeemCoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content" style="min-height:560px">
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
                     Redeem Coupons
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Redeem Coupons</a>
                       </li>
                      
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div id="Div1" runat="server">
                        <div class="widget yellow">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i>Coupon Details</h4>
                                <span class="tools">
                                    <a href="javascript:;" class="icon-chevron-down"></a>
                                </span>
                         </div>
                        <div class="widget-body" style="display: block;">
                        <!--BEGIN BASIC NAV-->
                        <div class="form-horizontal">
                            <div class="control-group">
                         <label class="control-label" style="width:10%;">Coupon Code</label>
                         
                         <div class="controls">
                         <asp:TextBox ID="txtSearch" class="input-medium" runat="server" />
                         </div>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>                       
                         </div>
                            
                       
                           <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                            <asp:button ID="btnSearch" type="submit" class="btn  btn-primary " runat="server" 
                                                        Text="Search" onclick="btnSearch_Click"></asp:button>
                            
                            <div class="space20"></div>
                        
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="widget" style="width:25%">
                                        <div class="widget-title">
                                          <center> <b><span style="font-family:Arial;padding-top:2%"> <%#Eval("CampaignName") %></span></b></center>
                                        </div>
                                        <div class="widget-body">
                                            <%#Eval("CustomerName") %><br />
                                            <%#Eval("Mobile") %><br />
                                            <%#Eval("Email") %>
                                            &nbsp &nbsp
                                            <asp:LinkButton ID="btnTransfer" runat="server" onClick="btnTransfer_Click" Text="Accept" CommandArgument='<%# Eval("CouponID") %>' class="btn btn-info" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                            </ContentTemplate>
                            </asp:UpdatePanel> 
                        </div>
                        
                        </div>
                        </div>
                        
                </div>
       

            <!-- END PAGE CONTENT-->         
         </div>
         <!-- END PAGE CONTAINER-->
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.Coupon')._addClass('active');
        });
</script>
</asp:Content>

