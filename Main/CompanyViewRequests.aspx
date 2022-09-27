<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyViewRequests.aspx.cs" Inherits="CompanyViewRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid"  style="min-height:1080px;background-color:White;margin-left:180px" >
<div>

<div class=" widget gray" style="width:980px; margin-left:40px;min-height:1000" >
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Requests from Affiliates</h4>
                            <span class="tools">
                            
                            </span>
                        </div>
                        <div class="widget-body">
                            <asp:ListView ID="ListView1" runat="server">



                            </asp:ListView>
                            
                            <!-- BEGIN FORM-->
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                CssClass="table table-bordered table-hover table-advance table-striped"  PagerStyle-BorderColor="Transparent" 
                                GridLines="None"  OnRowCommand="GridView1_RowCommand" ShowHeader="false">
                                
  
   <Columns>
   <asp:TemplateField HeaderText="Company Logo">
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
   
      
       <asp:LinkButton ID="lbtnApprove" runat="server" CssClass="btn btn-primary"  CommandName="Select" CommandArgument='<%# Eval("AppUserID") %>'><i class="icon-ok"></i>  </asp:LinkButton>
     <%-- <a href='<%# "ViewRegistrationDetails.aspx?ID=" + Eval("AppUserID") %>'>View Registration Details</a> --%>
      
      
   
   </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField>
   <ItemTemplate>
   
      
       <asp:LinkButton ID="lbtnDeny" runat="server" CssClass="btn btn-inverse" CommandName="Deny" CommandArgument='<%# Eval("AppUserID") %>'><i class="icon-trash"  ></i></asp:LinkButton>
   </ItemTemplate>
   </asp:TemplateField>
   
   
   </Columns>
   
   
   
    </asp:GridView>
                            <!-- END FORM-->
                        </div>
                    </div>
    
    </div>
    
    




    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
</asp:Content>

