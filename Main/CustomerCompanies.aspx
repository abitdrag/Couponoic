<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerCompanies.aspx.cs" Inherits="CustomerCompanies" %>

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
                    <strong>My Companies</strong>
                   </h3>
                   
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li class="active">
                           <strong>My Companies</strong>
                       </li>
                       
                   </ul>
                   
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
             <div class="row-fluid">
                 <div class="span12">
                    <asp:Repeater ID="rptrCompany" runat="server">
                        <ItemTemplate>
                            <div class="span3" style="margin-left:0px;margin-right:2%" >
                             <div class="widget gray-full" >
                             <div class="widget-title" style="text-decoration:underline;text-transform:uppercase">
                                <center><strong><%#Eval("Name") %></strong></center>
                                
                             </div>
                            <div class="widget-body" style="min-height:120px;padding-top:0px">
                                <div class="span5" style="margin-right:3%;min-height:100px">
                                    <img src='<%# Eval("Photo") %>' style="min-height:100px"/>
                                </div>
                                <div class="span6">
                                    <strong><center style="text-decoration:underline;text-transform:capitalize">Address</center></strong>
                                    <strong><%#Eval("Address") %><br /><%#Eval("City") %><br /><%#Eval("State") %><br /></strong>
                                    <strong>Phone:<%# Eval("Mobile") %></strong><br />
                                    <span class="space5"></span><asp:LinkButton ID="btnRemove" runat="server" class="btn-danger" style="padding:5px;margin-top:5px" OnClick="btnRemove_Click" CommandArgument='<%#Eval("AppuserID")%>'><i class="icon-remove"></i>&nbsp Remove</asp:LinkButton>
                                </div>

                                    
                                
                            </div>
                            </div>
                            </div>

                        </ItemTemplate>
                        
                    </asp:Repeater>
                 </div>
             </div>
           
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Company')._addClass('active');
    });
</script>
</asp:Content>

