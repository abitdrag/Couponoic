<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyAffiliateRequests.aspx.cs" Inherits="CompanyAffiliateRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                     Affiliate Requests
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="CompanyHome.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       
                       <li class="active">
                           Affiliate Requests
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
<div class=" widget white-full span11" >
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Requests from Affiliates</h4>
                        </div>
                        <div class="widget-body">
                            <asp:Label ID="lblNUll" runat="server" Text=" "></asp:Label>
                            <!-- BEGIN FORM-->
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                CssClass="table table-advance"  PagerStyle-BorderColor="Transparent" 
                                BorderColor="Transparent"  OnRowCommand="GridView1_RowCommand" GridLines="None">
                                
  
   <Columns>
   <asp:TemplateField>
   <ItemTemplate>
  
   <asp:Image ID="Image1" ImageUrl='<%# Eval("Photo") %>'  AlternateText="Not Available" runat="server" Height="70px"/>
    
   
   
   
   </ItemTemplate>
   </asp:TemplateField>
   
   <asp:TemplateField HeaderText="Name">
   <ItemTemplate>
   <%# Eval("Name") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="Email">   
   <ItemTemplate>
   <%# Eval("Email") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="Phone"> 
<ItemTemplate>
   <%# Eval("Mobile") %>
   
   </ItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="Address"> 
   <ItemTemplate>
   <%# Eval("Address") %>
   
   </ItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="City"> 
   <ItemTemplate>
   <%# Eval("City") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="State"> 
   <ItemTemplate>
   <%# Eval("State") %>
   
   </ItemTemplate>
   </asp:TemplateField>

   <asp:TemplateField HeaderText="Registration Time"> 
   <ItemTemplate>
   <%# Eval("RegistrationTime") %>
   
   </ItemTemplate>
   </asp:TemplateField>
   


   <asp:TemplateField> 
   <ItemTemplate>
   
      
       <asp:LinkButton ID="lbtnApprove" runat="server" CssClass="btn btn-success"  CommandName="Select" CommandArgument='<%# Eval("AppUserID") %>'><i class="icon-ok"></i>  </asp:LinkButton>
     <%-- <a href='<%# "ViewRegistrationDetails.aspx?ID=" + Eval("AppUserID") %>'>View Registration Details</a> --%>
      
      
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField>
   <ItemTemplate>
   
      
       <asp:LinkButton ID="lbtnDeny" runat="server" CssClass="btn btn-danger" CommandName="Deny" CommandArgument='<%# Eval("AppUserID") %>'><i class="icon-trash"  ></i></asp:LinkButton>
   </ItemTemplate>
   </asp:TemplateField>
   
   
   </Columns>
   
   
   
    </asp:GridView>
                            <!-- END FORM-->
                        </div>
                    </div>
<a class="icon-btn span2" href="CompanyAffiliates.aspx">
                            <i class="icon-group"></i>
                            <div>View All Affiliates</div>
                        </a> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.affiliateRequests')._addClass('active');
    });
</script>
</asp:Content>

