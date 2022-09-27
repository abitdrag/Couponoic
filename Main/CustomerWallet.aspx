<%@Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerWallet.aspx.cs" Inherits="CustomerWallet"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<strong>

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
                    My Wallet
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li class="active">
                           My Wallet
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div>
                <asp:ScriptManager ID="SM1" runat="server"></asp:ScriptManager>
            </div>
             <div class="">
                
               <div class="span5">
               <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="widget gray-full" style="margin-left:0px">
                        <div class="widget-title">
                           <h4><i class="icon-reorder"></i><strong><%#Eval("Name") %></strong> By<strong> <%#Eval("CompanyName") %></strong></h4>
                        </div>
                        <div class="widget-body">
                            <div>
                            <div class="span5" style="margin-right:3%;height:80px;width:200px">
                                <img src='<%#Eval("Logo")%>' style="height:80px;width:200px" />
                            </div>
                            <div>
                            Ends on <%#Eval("EndDate","{0:dd-MMM}") %><br />
                            Use Code <%#Eval("CouponCode")%><br />
                            <strong><%#Eval("Description") %></strong>
                            <asp:LinkButton ID="btnFranchisee" class="btn btn-info" runat="server" Text="View Franchisees" OnClick="btnFranchisee_Click" CommandArgument='<%#Eval("CompanyID")%>'></asp:LinkButton>
                            </div>
                            
                            </div>
                        </div>
                    </div>
                    
                </ItemTemplate>
               </asp:Repeater> 
               </div>
               <div class="span6">

                   <asp:Repeater ID="rptrFranchisee" runat="server">
                        <ItemTemplate>
                            <div class="widget white-full span10">
                                <div class="widget-title">
                                    <b><center><%#Eval("Name")%></center></b>
                                </div>
                                <div class="widget-body">
                                    <%#Eval("Address") %><br />
                                    <%#Eval("City") %> <br />
                                    <%#Eval("State") %> <br />
                                    <%#Eval("Mobile") %>
                                </div>
                            </div>
                        </ItemTemplate>
                   </asp:Repeater>
               </div> 
                     
               
             </div>
           
      </strong>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Wallet')._addClass('active');
    });
</script>
</asp:Content>

