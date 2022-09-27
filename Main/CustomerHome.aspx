<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerHome.aspx.cs" Inherits="CustomerHome"  Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/timeline-component.css" rel="stylesheet"  type="text/css" />
<link rel="stylesheet" href="assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<strong>

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
                     Home
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
            
            <div class="span11">
            <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
            <asp:UpdatePanel ID="UP1" runat="server">  
            <ContentTemplate>
            <div class="span9">
                     
            <asp:Repeater ID="campaigns1" runat="server">
               
               <ItemTemplate>
               <div class="span4" style="margin-left:0px">
                <div class="pricing-table terques " style="height:600px;margin:2%">
                <div class="pricing-head" >
                   <h3 style="width:90%"><b><%#Eval("Name") %> by <%#Eval("CompanyName") %></b></h3>
                    
                </div>
                <h4 style="padding:2%">
                <span class="note"><img src='<%#Eval("ImagePath") %> 'style="height:100px;width:230px"/></span>
                </h4>
                <ul>
                    <li><strong>Category:<%#Eval("CategoryName") %></strong></li>
                    <li><strong><%#Eval("Description") %></strong></li>
                    <li><strong>Started on:<%#Eval("StartDate","{0:dd-MMM}") %></strong></li>
                    <li><strong>Ends on:<%#Eval("EndDate","{0:dd-MMM}") %></strong></li>
                    <li><strong>Cost:<%#Eval("BaseValue") %></strong></li>
                    <li><strong><asp:LinkButton runat="server" ID="btnFav" Text="Add Company To Favourites" OnCommand="btnFav_Click" CommandArgument='<%#Eval("CompanyID") %>' style="padding:5px;color:White;width:100%"></asp:LinkButton></strong></li>
                    <asp:LinkButton ID="btnAffiliate" runat="server" class="btn btn-edit" style="margin-top:2%" PostBackUrl='<%# "ViewAffiliates.aspx?ID="+ Eval("CampaignID") %>'>View Affiliates</asp:LinkButton>
                </ul>
               
                </div>
                
                </div>
                
                </ItemTemplate>
               
            </asp:Repeater>
            </div>
            
           <div class="span3">
           
            
                       <div class="blog-side-bar blue-box span12" style="padding:5%;color:White">
                                <h3> <i class=" icon-tasks"></i>&nbsp Filter Campaigns</h3>
                                <div class="space5"></div>
                                 <div class="control-group">
                                    
                                        <div class="control-label" style="clear:both;float:left">
                                            <label><strong>Category&nbsp:&nbsp &nbsp</strong></label>
                                        </div>
                                            <div class="controls">
                                            <asp:DropDownList runat="server" ID="ddlCategory" style="width:60%;clear:both" AutoPostBack="false" ></asp:DropDownList>
                                            </div>
                                        

                                 </div>
                           
                                <div class="control-group">
                                    
                                        <div class="control-label" style="clear:both;float:left">
                                            <label><strong>Company&nbsp:&nbsp &nbsp</strong></label>
                                        </div>
                                            <div class="controls">
                                            <asp:DropDownList runat="server" ID="ddlCompany" style="width:60%;clear:both" AutoPostBack="false"></asp:DropDownList>
                                            </div>
                                        

                                 </div>
                                 
                                 <div class="control-group">
                                    <div class="controls">
                                        <asp:LinkButton ID="btnFilter" class="btn btn-edit" runat="server" OnClick="btnFilter_Click"><i class="icon-filter"></i>Apply</asp:LinkButton>
                                    </div>
                                 </div>
                             </div>
            </div>
            </ContentTemplate>
            </asp:UpdatePanel>  
            <!-- END PAGE CONTENT-->         
         </div>
       
</strong>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Home')._addClass('active');
    });
   
</script>
<style type="text/css">
.metro_tmtimeline:before {
    content: '';
    position: absolute;
    top: 0;
    bottom: 0;
    width: 2px;
    background: #E5E5E5;
    left: 5%;
    margin-left: -6px;
}
</style>
</asp:Content>