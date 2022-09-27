<%@ Page Title="" Language="C#" MasterPageFile="~/FranchiseeMasterPage.master" AutoEventWireup="true" CodeFile="FranchiseeAcceptedCoupons.aspx.cs" Inherits="FranchiseeAcceptedCoupons" %>

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
                    My Wallet
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Accepted Coupons</a>
                           <span class="divider active">/</span>
                       </li>
                      
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div>
                <asp:ScriptManager ID="SM1" runat="server"></asp:ScriptManager>
            </div>
             <div class="">
                
               <div class="span12"> 
               <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <%--<div class="widget gray-full span4" style="height:30%;float:left;clear:none;">
                        <div class="widget-title">
                           <h4><i class="icon-reorder"></i> <%#Eval("Name") %> </h4>
                        </div>
                        <div class="widget-body">
                            <div>
                            <div class="" style="margin-right:3%;float:left">
                                <img src='<%#Eval("ImagePath")%>' style="height:50px"/>
                            </div>
                            <div style="margin-left:2%">
                            
                            End Date <%#Eval("EndDate","{0:dd-MMM}") %><br />
                            Coupon Code <%#Eval("CouponCode")%><br />
                                                                    
                            </div>
                            
                            </div>
                        </div>
                    </div>--%>
                    <div class="pricing-table span3 terques">
                        <div class="pricing-head">
                            <%#Eval("Name") %>
                            <h3>
                          <center><img src='<%#Eval("ImagePath") %>' style="height:80px;width:70%" /></center>
                        </h3>
                        </div>
                        <ul>
                            <li>
                                Coupon Code:<%#Eval("CouponCode") %>
                            </li>
                            <li>
                               Redemption Date:<%#Eval("FranchiseeTime","{00:dd-MMM}") %> 
                            </li>
                        </ul>

                    </div>
                </ItemTemplate>
               </asp:Repeater> 
               </div>
               <div class="span6">

                   <asp:Repeater ID="rptrFranchisee" runat="server">
                        <ItemTemplate>
                            <div class="widget white-full span10">
                                <div class="widget-title">
                                    <b><center><%#Eval("Name")%></center></b>
                                </div>
                                <div class="widget-body">
                                    <%#Eval("Address") %><br />
                                    <%#Eval("City") %> <br />
                                    <%#Eval("State") %> <br />
                                    <%#Eval("Mobile") %>
                                </div>
                            </div>
                        </ItemTemplate>
                   </asp:Repeater>
               </div> 
                     
               
             </div>
            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

