<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="SampleEdit.aspx.cs" Inherits="SampleEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content" style="min-height:500px">
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
                     Profile
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                      
                       <li>
                           <a href="CustomerProfile.aspx">My Profile</a>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                       Edit Profile
                       </li>

                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
             <div class="row-fluid">
                 <!-- BEGIN PROFILE PORTLET-->
                 <div class=" profile span12">
                     <div class="span2">
                         <div class="profile-photo">
                             <img src="img/profile-pic.jpg" alt="">
                             <a href="javascript:;" class="edit" title="Edit Photo">
                                 <i class="icon-pencil"></i>
                             </a>
                         </div>
                         <a href="" class="profile-features active">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         <a href="#collapse_2" class="profile-features ">
                             <i class=" icon-phone"></i>
                             <p class="info">Password</p>
                         </a>
                     </div>
                     <form id="Form1" runat="server" class="span10">
                         <div class="profile-head">
                             <div class="span4">
                                 <h1>
                                     <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></h1>
                                 
                             </div>

                             <div class="span4">
                                 
                             </div>

                             <div class="span4">
                                 <a href="#" class="btn btn-edit btn-large pull-right mtop20"> Save Profile </a>
                             </div>
                         </div>
                         <div class="space15"></div>
                         <%--<div class="row-fluid">
                             <div class="span6 bio form">
                                 <h2> Profile Info</h2>
                                 <div class="form-horizontal" action="#">
                                     <div class="control-group">
                                         
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">Name</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     <div class="control-group">
                                         <label class="control-label">Area</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
                                         </div>
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">City</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                         </div>
                                     </div><div class="control-group">
                                         <label class="control-label">State</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     
                                     <div class="control-group">
                                         <label class="control-label">Email</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                         </div>
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">Mobile</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     <div class="form-actions">
                                         <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" 
                                             />
                                         <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn"/>
                                         
                                     </div>
                                 </div>

                              </div>
                              <div class="span6">
                                 <h2>Change Password</h2>

                                 <div class="widget orange">
                                     <div class="widget-title">
                                          <h4><i class="icon-reorder"></i> Sets New Password</h4>
                                           <span class="tools">
                                                <a class="icon-chevron-down" href="javascript:;"></a>
                                                <a class="icon-remove" href="javascript:;"></a>
                                           </span>
                                     </div>
                                     <div class="widget-body ">
                                         <form class="form-horizontal" action="#">
                                             <div class="control-group">
                                                 <label class="control-label">Current Password</label>
                                                 <div class="controls">
                                                 <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" CssClass="span6"></asp:TextBox>
                                                     
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">New Password</label>
                                                 <div class="controls">
                                                     <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" CssClass="span6"></asp:TextBox>
                                                   
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">Re-type New Password</label>
                                                 <div class="controls">
                                                 <asp:TextBox ID="txtPassRe"  runat="server" TextMode="Password" CssClass="span6" > </asp:TextBox>
                                                     
                                                 </div>
                                             </div>

                                             <div class="form-actions">
                                                 <asp:Button ID="btnSavePass" runat="server" Text="Change Password" 
                                                     CssClass="btn btn-success"  />
                                                 <asp:Button ID="btnCancelPass" runat="server" Text="Cancel" CssClass="btn"/>
                                                 
                                             </div>

                                         </form>
                                     </div>
                                 </div>
                               </div>
                                 
                                 <div class="space20"></div>
                                 <div class="space20"></div>
                             </div>--%>
                         <div class="row-fluid">
                
                <div class="span8">
                    <!-- BEGIN ACCORDION PORTLET-->
                    <div class="widget white-full">
                        
                        <div class="widget-body">
                            <div class="accordion" id="accordion1">
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_1">
                                         &nbsp &nbsp <i class="icon-user"></i>&nbsp &nbsp &nbsp Profile Details
                                        </a>
                                    </div>
                                    <div id="collapse_1" class="accordion-body collapse in">
                                        <div class="accordion-inner">
                                            <div class="control-group span12">
                                            <label class="control-label">Name</label>
                                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="control-group">
                                            <label class="control-label">Email</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                            <label class="control-label">Phone</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                            <label class="control-label">City</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                       </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_2">
                                         &nbsp &nbsp   <i class="icon-lock"></i>&nbsp &nbsp &nbsp Change Password
                                        </a>
                                    </div>
                                    <div id="collapse_2" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                           <div class="control-group">
                                            <label class="control-label">Existing Password</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                            <label class="control-label">New Password</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                            <label class="control-label">Confirm Password</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtCnfPass" runat="server"></asp:TextBox>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_3">
                                          &nbsp &nbsp   <i class="icon-camera-retro"></i>&nbsp &nbsp &nbsp Update Profile Picture
                                        </a>
                                    </div>
                                    <div id="collapse_3" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                    <!-- END ACCORDION PORTLET-->
                </div>
                    
                </div>
               
             </div>
            
            <!-- END PAGE CONTENT-->
         </div>
                     </form>
                 </div>
                 <!-- END PROFILE PORTLET-->
             </div>
             
             
         <!-- END PAGE CONTAINER-->
</div>
</asp:Content>


