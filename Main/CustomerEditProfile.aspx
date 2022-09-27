<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerEditProfile.aspx.cs" Inherits="CustomerEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
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
                      
                       <li class="active">
                           My Profile
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
                             
                         </div>
                         <a href="#" class="profile-features active" id="profile">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         <a href="#password-info" class="profile-features active " id="password">
                             <i class=" icon-lock"></i>
                             <p class="info">Password</p>
                         </a>
                     </div>
                     <div runat="server" class="span10">
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
                         <div class="row-fluid">
                             <div class="span6 bio form" id="profile-info">
                                 <h2> Profile Info</h2>
                                 <div class="widget orange" >
                                 <div class="widget-title">
                                          <h4><i class="icon-reorder"></i> Basic Details</h4>
                                           
                                     </div>
                                 <div class="widget-body ">
                                 <div class="form-horizontal" action="#" style="padding-right:10%">
                                     <div class="control-group">
                                         
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">Name</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtName" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     <div class="control-group">
                                         <label class="control-label">Area</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtArea" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">City</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtCity" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div><div class="control-group">
                                         <label class="control-label">State</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtState" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     
                                     <div class="control-group">
                                         <label class="control-label">Email</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtEmail" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div>
                                     <div class="control-group">
                                         <label class="control-label">Mobile</label>
                                         <div class="controls">
                                             <asp:TextBox ID="txtMobile" runat="server" class="input-medium"></asp:TextBox>
                                         </div>
                                     </div>
                                     
                                     <div class="form-actions">
                                         <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" 
                                             onclick="btnSave_Click" />
                                         <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn"/>
                                         <%--<button class="btn btn-success" type="submit">Submit</button>
                                         <button class="btn" type="button">Cancel</button>--%>
                                     </div>
                                 </div>
                                 </div>
                                 </div>

                              </div>
                             <div class="span6" id="password-info">
                                 <h2>Change Password</h2>

                                 <div class="widget orange">
                                     <div class="widget-title">
                                          <h4><i class="icon-reorder"></i> Sets New Password</h4>
                                     </div>
                                     <div class="widget-body ">
                                         <div class="form-horizontal" action="#">
                                             <div class="control-group">
                                                 <label class="control-label">Current Password</label>
                                                 <div class="controls">
                                                 <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" CssClass="span6" required></asp:TextBox>
                                                 <asp:Label ID="lblError" runat="server" Visible="false">Incorrect Password</asp:Label>
                                                     <%--<input class="span6 " type="password">--%>
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">New Password</label>
                                                 <div class="controls">
                                                     <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" CssClass="span6"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RF1" ControlToValidate="txtNewPass" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">Re-type New Password</label>
                                                 <div class="controls">
                                                 <asp:TextBox ID="txtPassRe"  runat="server" TextMode="Password" CssClass="span6" > </asp:TextBox>
                                                     <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="txtNewPass" ControlToValidate="txtPassRe" ErrorMessage="Both Passwords Should Match"></asp:CompareValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassRe" ErrorMessage="* required"></asp:RequiredFieldValidator>
                                                     <%--<input class="span6 " type="password">--%>
                                                 </div>
                                             </div>

                                             <div class="form-actions">
                                                 <asp:Button ID="btnSavePass" runat="server" Text="Change Password" 
                                                     CssClass="btn btn-success" onclick="btnSavePass_Click" />
                                                 <asp:Button ID="btnCancelPass" runat="server" Text="Cancel" CssClass="btn"/>
                                                 <%--<button type="submit" class="btn btn-success">Change Password</button>
                                                 <button type="button" class="btn">Cancel</button>--%>
                                             </div>

                                         </div>
                                     </div>
                                 </div>
                               </div>
                                 
                                 <div class="space20"></div>
                                 <div class="space20"></div>
                             </div>
                      </div>
                 </div>
                 <!-- END PROFILE PORTLET-->
             </div>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    
</script>


</asp:Content>

