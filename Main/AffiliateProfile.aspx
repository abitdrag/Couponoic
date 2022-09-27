﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateProfile.aspx.cs" Inherits="AffiliateProfile" %>

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
                     Profile
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li class="active">
                           My Profile
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
             <div class="row-fluid">
                 <!-- BEGIN PROFILE PORTLET-->
                 <div class=" profile span12">
                     <div class="span2">
                         <div class="profile-photo">
                             <img src="img/profile-pic.jpg" alt="">
                             <a href="javascript:;" class="edit" title="Edit Photo">
                                 <i class="icon-pencil"></i>
                             </a>
                         </div>
                         <a href="AffiliateProfile.aspx" class="profile-features active">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         <a href="AffiliateContact.aspx" class="profile-features ">
                             <i class=" icon-phone"></i>
                             <p class="info">Contact</p>
                         </a>
                     </div>
                     <div class="span10">
                         <div class="profile-head">
                             <div class="span4">
                                 <h1>
                                     <asp:Label ID="lblName" runat="server" Text=" "></asp:Label></h1>
                                
                             </div>

                            

                             <div class="span4">
                                 <a href="AffiliateEditProfile.aspx" class="btn btn-edit btn-large pull-right mtop20"> Edit Profile </a>
                                
                             </div>
                         </div>
                         <div class="space15"></div>
                         <div class="row-fluid">

                             <div class="span8 bio">
                                 
                                 <div class="space15"></div>
                                 <h2>Bio Graph</h2>
                                 <p><label>Name </label>:
                                     <asp:Label ID="lblFName" runat="server" Text=""></asp:Label></p>
                                 
                                 <p><label>Email </label>: 
                                     <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></p>
                                 <p><label>Phone </label>:
                                     <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label></p>
                                 
                                 

                             </div>
                             
                         </div>
                     </div>
                 </div>
                 <!-- END PROFILE PORTLET-->
             </div>
            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
      </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.myprofile')._addClass('active');
    });
</script>
</asp:Content>

