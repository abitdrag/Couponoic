<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blank.aspx.cs" Inherits="Blank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                     Dashboard
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
                       <li class="active">
                           Search Company
                       </li>
                      
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <asp:ScriptManager ID="SM1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UP1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btn1" runat="server" Text="Click Me" />
                <asp:GridView ID="GV1" runat="server">
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
                         
                        </Columns>
                </asp:GridView>
            </ContentTemplate>
            
            
           
            </asp:UpdatePanel>
            <%--<asp:GridView ID="GV1" runat="server">
            <Columns>
            <asp:TemplateField>
            <ItemTemplate>
                                <h3><%# Eval("Name") %></h3>
                                <h4><%# Eval("Email")%></h4>
                                <h4><%# Eval("Mobile") %></h4>
                            </ItemTemplate>
            </asp:TemplateField>
            </Columns>
            </asp:GridView>--%>
            


            <!-- END PAGE CONTENT-->         
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
</asp:Content>

