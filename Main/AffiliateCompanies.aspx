<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateCompanies.aspx.cs" Inherits="AffiliateCompanies" %>

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
                    My Companies
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li class="active">
                           My Companies
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
             <div>
                 <div class="span12" >
                    <asp:Repeater ID="rptrCompany" runat="server">
                        <ItemTemplate>
                            <div class="widget green-full span4" style="margin-left:0px">
                            <div class="widget-body span12">
                                <div class="span3">
                                    <img src='<%# Eval("Photo") %>'/>
                                </div>
                                <div class="span5">
                                    <%# Eval("Name") %><br />
                                    <%# Eval("Mobile") %>
                                </div>
                                
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
<script type="text/javascript">
    $(document).ready(function () {
        $('.Companies')._addClass('active');
    });
</script>
</asp:Content>

