<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
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
                     Dashboard
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                       </li>
                      
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                <!--BEGIN METRO STATES-->
                 <div class="space20"></div>
                <div class="metro-nav row-fluid">
                    <div class="span2"></div>
                    <div class="metro-nav-block nav-light-blue double">
                        <a data-original-title="Search" href="AdminSearchUser.aspx" class="span6">
                            <i class="icon-search"></i>
                            <div class="info">Search Users</div>
                            <div class="status">Search for any user</div>
                        </a>
                    
                    </div>
                    <div class="span2"></div>
                    <div class="metro-nav-block nav-block-orange double span6">
                        <a data-original-title="" href="AdminRequests.aspx" class="span6">
                            <i class="icon-user"></i>
                            <div class="info">Requests</div>
                            <div class="status">View Company Requests</div>
                        </a>
                    
                    </div>
                    <div class="span2"></div>
                </div>
                <div class="space20"></div>
                <div class="metro-nav row-fluid">
                    <div class="span2"></div>
                    <div class="metro-nav-block nav-block-orange double span6">
                        <a data-original-title="" href="Categories.aspx">
                            <i class="icon-th"></i>
                            <div class="info">Categories</div>
                            <div class="status">View All Categories</div>
                        </a>
                    
                    </div>
                    <div class="span2"></div>
                    <div class="metro-nav-block nav-light-blue double span6">
                        <a data-original-title="" href="login.aspx">
                            <i class="icon-off"></i>
                            <div class="info">Logout</div>
                            <div class="status">End the session</div>
                        </a>
                    
                    </div>
                   
                </div>
                <div class="space10"></div>
                <!--END METRO STATES-->
            </div>
       

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.sub-menu')._removeClass('active');
        $('.Home')._addClass('active');
    });
</script>
</asp:Content>
