<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminRequests.aspx.cs" Inherits="AdminRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row-fluid"  style="min-height:1080px;background-color:White;margin-top:20px" >
<div runat="server">

<div class=" widget gray" style="width:1080px; margin-left:40px;min-height:1000" >
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Requests from Companies</h4>
                            <span class="tools">
                            
                            </span>
                        </div>
                        <div class="widget-body">
                            <asp:ListView ID="ListView1" runat="server">



                            </asp:ListView>
                            
                            <!-- BEGIN FORM-->
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                CssClass="table table-advance"  PagerStyle-BorderColor="Transparent" 
                                BorderColor="Transparent"  OnRowCommand="GridView1_RowCommand">
                                
  
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
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.sub-menu')._removeClass('active');
        $('.Requests')._addClass('active');
    });
</script>


</asp:Content>
