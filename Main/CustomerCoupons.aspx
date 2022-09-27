<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerCoupons.aspx.cs" Inherits="CustomerCoupons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
                   <!-- END THEME CUSTOMIZER-->
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
                           All Coupons 
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
             <div class="row-fluid">
               <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <div class="span4" style="margin-left:0px;margin-right:1%;">
                    <div class="widget gray" style="min-height:150px">
                        <div class="widget-title">
                           <h4><i class="icon-reorder"></i><strong> <%#Eval("Name") %></strong> By <strong><%# Eval("CompanyName") %></strong></h4>
                        </div>
                        <div class="widget-body">
                        <div>
                            <div class="span5">
                                <img src='<%#Eval("ImagePath") %>' style="height:70px;width:100px"/>
                            </div>
                        </div>
                          
                            <strong>Ends on:</strong><%#Eval("EndDate","{0:dd-MMM}") %><br />
                            <strog>Use Code:</strog><%#Eval("CouponCode") %><br />
                            <strong><%#Eval("Description") %></strong>
                            
                        
                        </div>
                    </div>
                </div>
                </ItemTemplate>
               </asp:Repeater>  
             </div>
           
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Coupon')._addClass('active');
    });
</script>
</asp:Content>

