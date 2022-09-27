<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="ViewAffiliates.aspx.cs" Inherits="ViewAffiliates" Debug="true" %>

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
                   
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="span12 product-search" style="padding:10px;height:auto">
            
            <div class="control-group span4">
                <div class="control-label">Name</div> 
                <div class="controls"><asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox></div>
            </div>
            <div class="control-group span4 ">
                <div class="control-label">City:</div>
                <div class="controls"><asp:DropDownList ID="ddlCity" runat="server" style="direction:ltr"></asp:DropDownList></div>
             </div>
            <div class="span2" style="padding:15px">
                <asp:LinkButton ID="btnSearch" runat="server" class="btn btn-block"><i class="icon-search"></i></asp:LinkButton>
            </div>
            </div>
            <div class="span10">
            <div class="span6">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="GridView1_RowCommand">
            <ItemTemplate>
                <div class="span4 widget blue-full" style="margin-top:20px;margin-left:20px">
                <div class="widget-body">
                <%# DataBinder.Eval(Container,"DataItem.Name") %>
                <br />
                <%# DataBinder.Eval(Container,"DataItem.Address") %>
                <br />
                <%# DataBinder.Eval(Container,"DataItem.Mobile") %>
                <br />
                <asp:LinkButton ID="btnView" runat="server" class="btn btn-success" PostBackUrl='<%# "CustomerViewProfile.aspx?ID="+ Eval("AppUserID") %>'><i class="icon-eye-open"></i></asp:LinkButton>
                <asp:LinkButton ID="btnGetCoupons" CommandName="Select" CommandArgument='<%# Eval("AppUserID") %>' runat="server" class="btn btn-success"><i class="icon-money"></i></asp:LinkButton>
               

                </div>
                </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            <div class="span6">
            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="GridView2_RowCommand">
                            
                                 <ItemTemplate>
                              
                                   <div class="span12" style="margin-left:20px">
                                 <div class="widget blue1 portlet" style="margin-top:20px" >
                                 <div class="widget-title" style="color:#33B6A0">
                                   <center><h3 style="margin-top:0px;color:White"><%#Eval("Name") %></h3></center>
                                 </div>
                                 <div class="widget-body">
                                    <div class="blog" style="width:100%">
                                    <div class="span3 orange">
                                         <a href="javascript:;" class="blog-features3 date active" style="height:65px;padding:1px">
                                             <p><%#DataBinder.Eval(Container,"DataItem.Type") %></p>
                                           <p>Rs.<%#DataBinder.Eval(Container,"DataItem.BenefitValue") %></p>
                                         </a>
                                         <a class="blog-features3 comments active" style="height:65px;padding:1px;margin-top:40px">
                                             
                                             <i class=" icon-time" style="position:relative;margin-top:0px"></i>
                                             <p class="info"><%#Eval("StartDate","{0:dd-MMM}") %> to <%#Eval("EndDate","{0:dd-MMM}") %></p>
                                         </a>
                                         <a  class="blog-features3 comments active" style="height:65px;padding:1px;margin-top:40px">
                                             <i class=" icon-dollar"></i>
                                             <p class="info">Rs. <%# DataBinder.Eval(Container,"DataItem.BaseValue") %> each</p>
                                         </a>
                                       
                                           <asp:LinkButton ID="LinkButton1" runat="server" class="blog-features3 comments active" style="height:65px;padding:1px;margin-top:40px" Text="Buy" CommandName="Buy" CommandArgument='<%#Eval("AffiliateID") %>'></asp:LinkButton>
                                         
                                     </div>
                                     <div class="span8">
                                         <p>
                                            <div>  <p style="font-size:large;color:Gray" class="author">BY | <%# Eval("CompanyName") %></p></div>
                                            
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px;margin-left:46px"/>
                                           Available Coupons:  <asp:Label ID="lblNoOfCoupons" runat="server" Text=""></asp:Label></br>
                                          Number of coupons:<asp:DropDownList ID="DropDownList1" runat="server">


                                         </asp:DropDownList> <%-- Validation has to be done--%>
                                     </div>
                                    </div>
                                 </div>
                                 </div>
                                 </div>
                                
                                 </ItemTemplate>
                                 </asp:Repeater>
            </div>

            </div>
            
         <!-- END PAGE CONTAINER-->
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">


</asp:Content>

