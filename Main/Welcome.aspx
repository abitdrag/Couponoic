<%@ Page Title="" Language="C#" MasterPageFile="~/GuestUserMasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content" style="min-height:500px;width:75%">
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
                  
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
                 <div class="span12">
                 
                     <!-- BEGIN BLOG PORTLET-->
                     <div class="row-fluid">
                         <div class="span8 ">
                             <div class="row-fluid">
                                 <asp:Repeater ID="rptr1" runat="server">
                                 <ItemTemplate>
                                 <div class="widget red-full">
                                 <div class="widget-title">
                                   <center><h3 style="margin-top:0px;color:White"><%#Eval("Name") %></h3></center>
                                 </div>
                                 <div class="widget-body">
                                    <div class="blog" style="width:100%">
                                    <div class="span3 orange">
                                         <a href="javascript:;" class="blog-features date active" style="height:65px;padding:1px">
                                             <p><%#DataBinder.Eval(Container,"DataItem.Type") %></p>
                                             <%--<% if (Eval("Type").ToString().Equals("Discount"))
                                                { %>
                                             <p>Discount Percentage <%#Eval("DiscountValue") %></p>
                                             <%}
                                                else
                                                { %>
                                                <p>Benefit Amount <%#Eval("BenefitValue") %></p>
                                                <%} %>--%>
                                         </a>
                                         <a class="blog-features comments active" style="height:65px;padding:1px">
                                             
                                             <i class=" icon-time" style="position:relative;margin-top:0px"></i>
                                             <p class="info"><%#Eval("StartDate","{0:dd-MMM}") %> to <%#Eval("EndDate","{0:dd-MMM}") %></p>
                                         </a>
                                         <a  class="blog-features comments active" style="height:65px;padding:1px">
                                             <i class=" icon-dollar"></i>
                                             <p class="info">Rs. <%# DataBinder.Eval(Container,"DataItem.BaseValue") %> each</p>
                                         </a>
                                         <a class="blog-features comments active buy" style="height:65px;padding:1px" >
                                             <i class=" icon-briefcase"></i>
                                             <p class="info">Buy Coupon</p>
                                         </a>
                                         
                                         
                                     </div>
                                     <div class="span8">
                                         <p>
                                            <div> BY <a href="javascript:;" class="author"><%# Eval("CompanyName") %></a>|</div>
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px"/>
                                         
                                     </div>
                                    </div>
                                 </div>
                                 </div>
                                 </ItemTemplate>
                                 </asp:Repeater>
                                 
                             </div>
                         </div>
                         <div class="span4">
                         <div class="blog-side-bar blue-box" style="width:98%">
                         <h2><i class="icon-filter"></i>Filter Results &nbsp &nbsp <asp:LinkButton ID="btnReset" runat="server" OnClick="btnReset_Click"><i class="icon-refresh"></i>Reset Filters</asp:LinkButton></h2>
                         <%--<asp:Repeater ID="rptr2" runat="server">
                            <HeaderTemplate>
                            
                                <h3> <i class=" icon-tasks"></i>Category</h3>
                                 <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                     <li style="width:45%;margin-bottom:5%">
                                         <a href="#">
                                             <i class=" icon-tag"></i>
                                             <span><%#Eval("Name") %></span>
                                         </a>
                                     </li>
                             </ItemTemplate>
                             <FooterTemplate>
                             </ul>
                            
                             </FooterTemplate>
                         </asp:Repeater>--%>
                         <asp:Repeater ID="rptr3" runat="server">
                            <HeaderTemplate>
                            
                                <h4> <i class=" icon-tasks"></i>Company</h4>
                                 <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                     <li style="width:45%;margin-bottom:5%">
                                         <asp:LinkButton ID="btnCompany" runat="server" OnClick="btnCompany_Click" CommandArgument='<%#Eval("Name") %>'><i class="icon-tag"></i><span><%#Eval("Name") %></span></asp:LinkButton>
                                     </li>
                             </ItemTemplate>
                             <FooterTemplate>
                             </ul>
                            
                             </FooterTemplate>
                         </asp:Repeater>
                          </div> 
                         <div class="blog-side-bar green-box">
                         <div class="row-fluid" style="width:98%">
                         
                        <a class="icon-btn span11" href="login.aspx" >
                            <i class="icon-group" style="background-color:White"></i>
                            <div style="color:White">Login</div>
                            
                        </a>
                        
                        <center><span class="badge badge-important">OR</span></center>
                        <a class="icon-btn span11" href="Registration.aspx" style="background-color:White">
                            <i class="icon-group"></i>
                            <div>Signup</div>
                            <span class="badge badge-important"></span>
                        </a>
                        
                    </div>
                         </div> 
                             
                         </div>
                     </div>
                     <!-- END BLOG PORTLET-->
                 </div>

            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
      
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $(".buy").click(function () {
            alert("Login or Signup to purchase");
        });
    });
</script>


</asp:Content>
 
