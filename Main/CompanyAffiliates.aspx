<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyAffiliates.aspx.cs" Inherits="CompanyAffiliates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                     My Affiliates
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="CompanyHome.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       
                       <li class="active">
                           My Affiliates
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <div class="blog-side-bar green-box span10">
                <h2 style="color:White">&nbsp <i class="  icon-group"></i> &nbsp &nbsp All Affiliates </h2>
                <div class="space20"></div>
                <asp:Repeater ID="rptrAllAffiliates" runat="server">
                <ItemTemplate>
                    <div class="row-fluid" style="color:Black">
                        <div class="green-box-blog">
                            <div class="span2" style="height:75px">
                                <img alt="" src='<%# Eval("Photo") %>' style="height:95%;width:95%">
                            </div>
                            <div class="span9" style="font-weight:bold">
                                <h5>
                                    <a href='<%# "CustomerViewProfile.aspx?ID=" + Eval("AppUserID") %>'> <%# Eval("Name") %></a>
                                </h5>
                                <p style="color:White">From : <%# Eval("City") %></p>
                                <p style="color:White">Phone : <%# Eval("Mobile") %></p>
                            </div>
                        </div>
                    </div>
                <div class="space10"></div>
                </ItemTemplate>
                </asp:Repeater>                 
            </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.affiliates')._addClass('active');
    });
</script>
</asp:Content>