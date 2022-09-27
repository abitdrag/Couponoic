<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateSearchCustomer.aspx.cs" Inherits="AffiliateSearchUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
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
                    Search For Customers
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="Home.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">Search</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">Search Customers</a>
                           
                       </li>
                      
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
               
              <div>
                        <div class="widget gray">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i> Search Criteria</h4>
                                <span class="tools">
                                    <a href="javascript:;" class="icon-chevron-down"></a>
                                </span>
                        </div>
                        <div class="widget-body" style="display: block;">

                            <!--BEGIN BASIC NAV-->
                         <div class="form-horizontal search-result">
                                                <div class="control-group">
                                                    <label class="control-label">Name</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtSearch" class="input-xxlarge" runat="server" />
                                                     </div>
                                                    
                                                </div>
                                                 
                        <%--<div class="control-group">                   
                        <label class="control-label">Role</label>
                        <div class="controls">
                               <%-- <asp:CheckBoxList ID="role" runat="server" RepeatDirection="Horizontal" Width="300px" CellSpacing="100" >
                                <asp:ListItem Value="Company" Text="Company" class="checkbox"></asp:ListItem>
                                <asp:ListItem  Value="Affiliate" class="checkbox" ></asp:ListItem>
                                <asp:ListItem  Value="Customer" class="checkbox"></asp:ListItem>
                                </asp:CheckBoxList>--%>
                            <%--<asp:DropDownList ID="ddlType" runat="server">
                                <asp:ListItem Selected="True" Value="" Text="All"></asp:ListItem>
                                <asp:ListItem Value="Agent" Text="Affiliate"></asp:ListItem>
                                <asp:ListItem Value="Company"></asp:ListItem>
                                <asp:ListItem Value="Customer"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        </div>--%>
                        <div class="control-group">
                           <label class="control-label">City</label>
                           <div class="controls row-fluid">
                            <div style="float:left"><asp:TextBox ID="txtCity" runat="server" class="large"/>
                            </div>
                            <div class="span1" style="float:left"></div>
                            <asp:button ID="btnSearch" type="submit" class="btn  btn-primary " runat="server" 
                                                        Text="Search" onclick="btnSearch_Click"></asp:button>
                            </div>
                        </div>
                             <div class="space20"></div>
                       
                     <asp:GridView ID="GridView1"  class="table table-bordered table-striped table-advance table-hover"
                                    runat="server" AutoGenerateColumns="false" GridLines="None" ShowHeader="false"> 
                    <RowStyle/>
                    <Columns>
                         <asp:TemplateField>
                            <ItemTemplate>
                                <img src='<%#Eval("Photo") %>' style="width:100px"/>
                            </ItemTemplate>
                            <ItemStyle Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="User">
                            <ItemTemplate>
                                <h3><%# Eval("Name") %></h3>
                                <h4><%# Eval("Email")%></h4>
                                <h4><%# Eval("Mobile") %></h4>
                            </ItemTemplate>
                            <ItemStyle Width="30%" CssClass="span4 product-text"/>

                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <ItemTemplate>
                                <h4><%# Eval("Type") %></h4>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField>
                            <ItemTemplate>
                                <h4><%# Eval("City") %></h4>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lb1" class="btn btn-success" runat="server"  ToolTip="View Profile" OnClick="btnlb1_Click" CommandArgument='<%#Eval("AppUserID") %>'><i class="icon-eye-open"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

<RowStyle BorderWidth="0px"></RowStyle>
                </asp:GridView>

                <%--<asp:Repeater ID="Result1" runat="server">
                    <HeaderTemplate>
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <tr style="background-color:#DDDDDD">
                            <th>User</th>
                            <th>Type</th>
                            <th>Action</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="row-fluid product-search">
                            <td class="span4 product-text">
                                <%#DataBinder.Eval(Container, "DataItem.Name")%><br />
                                <%#DataBinder.Eval(Container, "DataItem.Email")%><br />
                                <%#DataBinder.Eval(Container, "DataItem.Mobile")%><br />
                                
                            </td>
                            <td>
                                <%#DataBinder.Eval(Container, "DataItem.Type")%>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" ><i class="icon-trash"></i></asp:LinkButton>
                            </td>
                        </tr>
                     </table>
                     </ItemTemplate>
                </asp:Repeater>--%>
                <asp:Label runat="server" ID="lblNoResults" Visible="false" Text="You have no Customers matching the given criteria."></asp:Label>
                            </div>
                            </div>
            
            </div>
            </div>
            
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
         
            <!-- END PAGE CONTENT-->         
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
      </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.sub-menu')._removeClass('active');
        $('.SearchUser')._addClass('active');
        $('.Customers')._addClass('active');
    });
</script>
</asp:Content>

