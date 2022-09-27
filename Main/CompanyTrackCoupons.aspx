<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyTrackCoupons.aspx.cs" Inherits="CompanyTrackCoupons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid">
               <div class="span12">
                  
                   <h3 class="page-title">
                     Track Coupons of <% Response.Write(CampaignName);%>
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="CompanyHome.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <% Response.Write(CampaignName);%>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                           Track Coupons
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
<div class=" widget white-full span11" >
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> All Coupons</h4>
                        </div>
                        <div class="widget-body">
                            <asp:Label ID="lblNUll" runat="server" Text=" "></asp:Label>
                            <!-- BEGIN FORM-->
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                CssClass="table table-advance"  PagerStyle-BorderColor="Transparent" 
                                BorderColor="Transparent" GridLines="None">
                                
  
   <Columns>
  
   <asp:TemplateField HeaderText="Coupon Code">
   <ItemTemplate>
   <%# Eval("CouponCode") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="Affiliate Name">   
   <ItemTemplate>
   <%#Eval("AffiliateName") %>
  
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="Customer Name"> 
<ItemTemplate>
   <%# Eval("CustomerName") %>
   
   </ItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="Franchisee "> 
   <ItemTemplate>
   <%# Eval("FranchiseeName") %>
   
   </ItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="Authority"> 
   <ItemTemplate>
   <%# Eval("Status") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   
   </Columns>
   
   
   
    </asp:GridView>
                            <!-- END FORM-->
                        </div>
                    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
</asp:Content>

