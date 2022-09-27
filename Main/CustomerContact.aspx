﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerContact.aspx.cs" Inherits="CustomerContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


            <!-- BEGIN PAGE HEADER-->   
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
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
                            
                         </div>
                         <a href="CustomerProfile.aspx" class="profile-features">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         <a href="CustomerContact.aspx" class="profile-features active">
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
                                 <a href="CustomerEditProfile.aspx" class="btn btn-edit btn-large pull-right mtop20"> Edit Profile </a>
                             </div>
                         </div>
                         <div class="space15"></div>
                         <div class="row-fluid">

                             
                                 <h2>Contact</h2>
                                 <strong>
                                     <asp:Label ID="lblFName" runat="server" Text=""></asp:Label></strong>
                                 
                                 <p>
                                         <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></p>

                                 <br>

                                 <strong>
                                     Phone
                                 </strong>
                                 <br>
                                 
                             <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                                 <br><br>
                                 <strong>
                                     Email
                                 </strong>
                                 <br>
                                 
                             <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                                 <br>
                                 <br>

                                 

                                 <div class="space20"></div>

                             
                             
                         </div>
                     </div>
                 </div>
                 <!-- END PROFILE PORTLET-->
             </div>
           
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Profile')._addClass('active');
    });
</script>
</asp:Content>

