<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

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
                           Add Category
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN EDITABLE TABLE widget-->
             
             <div class="row-fluid">
                    <div class="span3"></div>
                    <div class="span6">
                        <!-- BEGIN GRID SAMPLE PORTLET-->
                        <div class="widget black">
                            <div class="widget-title">
                                <h4><i class="icon-reorder"></i> Add or Edit</h4>
                                        <span class="tools">
                                        <a class="icon-chevron-down" href="javascript:;"></a>
                                        <a class="icon-remove" href="javascript:;"></a>
                                        </span>
                            </div>
                            <div class="widget-body">

                            <div action="#" class="form-horizontal" runat="server">
                                
                                <div class="control-group">
                                    <label class="control-label">Category Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="input input-xlarge"></asp:TextBox>
                                        
                                        
                                    </div>
                                </div>
                                
                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="form-actions">
                                    <asp:LinkButton ID="btnSave" runat="server" class="btn blue" 
                                        onclick="btnSave_Click"><i class="icon-ok"></i>Save</asp:LinkButton>
                                    <%--<button type="submit" class="btn blue"><i class="icon-ok"></i> Save</button>--%>
                                    <asp:LinkButton ID="btnCancel" runat="server" class="btn" onclick="btnCancel_Click"><i class="icon-remove"></i>Cancel</asp:LinkButton>
                                    
                                </div>
                            </div>
                          
                     
                            </div>
                        </div>
                        <!-- END GRID SAMPLE PORTLET-->
                    </div>
                   <div class="span3"></div>
                </div>
            
            
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.sub-menu')._removeClass('active');
        $('.AddCategory')._addClass('active');
        $('.Category')._addClass('active');
        $('.Arrow1')._addClass('open');

    });
</script>


</asp:Content>
