<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                     Categories
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="Home.aspx">Home</a>
                           <span class="divider">/</span>
                       </li>
                       
                       <li class="active">
                           Categories
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN EDITABLE TABLE widget-->
            <div runat="server">
             <div class="row-fluid">
                 <div class="span12">
                     <!-- BEGIN EXAMPLE TABLE widget-->
                     <div class="widget black">
                         <div class="widget-title">
                             <h4><i class="icon-th"></i> Categories</h4>
                            
                         </div>
                         <div class="widget-body">
                             
                                 <div class="space15"></div>
                                 

                                     <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <%# Eval("Name") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <%# Eval("Description")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        
                    </Columns>
                </asp:GridView>
                
                <asp:Button ID="btnAdd" runat="server" Text="Add New Category" 
                 onclick="btnAdd_Click" style="margin-top:10px" class="btn btn-small btn-inverse"/>
                             </div>
                         </div>
                     </div>
                     <!-- END EXAMPLE TABLE widget-->
                 </div>
                 
             </div>
             
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.sub-menu')._removeClass('active');
        $('.AllCategory')._addClass('active');
        $('.Category')._addClass('active');
        $('.Arrow1')._addClass('open');

    });
</script>


</asp:Content>

