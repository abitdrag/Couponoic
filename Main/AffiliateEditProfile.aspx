<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateEditProfile.aspx.cs" Inherits="AffiliateEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function checkPassword() {
        if (document.getElementById("txtNewPass").innerHTML.toString.equals(document.getElementById("txtPassRe").innerHTML.toString)) {

        }
        else {
            alert("New Password do not match");
        }
    }
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
                             <a href="javascript:;" class="edit" title="Edit Photo">
                                 <i class="icon-pencil"></i>
                             </a>
                         </div>
                         <a href="CustomerProfile.aspx" class="profile-features active">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         <a href="CustomerContact.aspx" class="profile-features ">
                             <i class=" icon-phone"></i>
                             <p class="info">Contact</p>
                         </a>
                     </div>
                     <div id="Form1" runat="server" class="span10">
                         <div class="profile-head">
                             <div class="span4">
                                 <h1>
                                     <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></h1>
                                 
                             </div>

                             <div class="span4">
                                 
                             </div>

                             <div class="span4">
                                 <%--<a href="#" class="btn btn-edit btn-large pull-right mtop20"> Save Profile </a>--%>
                             </div>
                         </div>
                         <div class="space15"></div>
                         <div class="row-fluid">
                             <div class="span12 bio form">
                                 <h2> Profile Info</h2>
                                 <form class="form-horizontal" action="#">
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
                                             onclick="btnSave_Click" />
                                         <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn"/>
                                         <%--<button class="btn btn-success" type="submit">Submit</button>
                                         <button class="btn" type="button">Cancel</button>--%>
                                     </div>
                                 </div>

                                 <div class="space10"></div>

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
                                                     <%--<input class="span6 " type="password">--%>
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">New Password</label>
                                                 <div class="controls">
                                                     <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" CssClass="span6"></asp:TextBox>
                                                   <%-- <input class="span6 " type="password">--%>
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">Re-type New Password</label>
                                                 <div class="controls">
                                                 <asp:TextBox ID="txtPassRe"  runat="server" TextMode="Password" CssClass="span6" > </asp:TextBox>
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

                                         </form>
                                     </div>
                                 </div>

                                

                                 

                                 <%--<h2> Edit Profile Picture</h2>
                                 <div class="widget green">
                                     <div class="widget-title">
                                         <h4><i class="icon-user"></i> Profile Picture Change </h4>
                                           <span class="tools">
                                                <a class="icon-chevron-down" href="javascript:;"></a>
                                                <a class="icon-remove" href="javascript:;"></a>
                                           </span>
                                     </div>
                                     <div class="widget-body form">
                                         <!-- BEGIN FORM-->
                                         <form class="form-horizontal" action="#">

                                             <div class="control-group">
                                                 <label class="control-label">Without input</label>
                                                 <div class="controls">
                                                     <div data-provides="fileupload" class="fileupload fileupload-new">
                                                        <span class="btn btn-file">
                                                            <span class="fileupload-new">Select file</span>
                                                            <span class="fileupload-exists">Change</span>
                                                            <input class="default" type="file">
                                                        </span>
                                                         <span class="fileupload-preview"></span>
                                                         <a style="float: none" data-dismiss="fileupload" class="close fileupload-exists" href="#">×</a>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="control-group">
                                                 <label class="control-label">Image Upload</label>
                                                 <div class="controls">
                                                     <div data-provides="fileupload" class="fileupload fileupload-new">
                                                         <div style="width: 200px; height: 150px;" class="fileupload-new thumbnail">
                                                             <img alt="" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image">
                                                         </div>
                                                         <div style="max-width: 200px; max-height: 150px; line-height: 20px;" class="fileupload-preview fileupload-exists thumbnail"></div>
                                                         <div>
                                                            <span class="btn btn-file"><span class="fileupload-new">Select image</span>
                                                            <span class="fileupload-exists">Change</span>
                                                            <input class="default" type="file"></span>
                                                            <a data-dismiss="fileupload" class="btn fileupload-exists" href="#">Remove</a>
                                                         </div>
                                                     </div>
                                                     <span class="label label-important">NOTE!</span>
                                                     <span>
                                                     Attached image thumbnail is
                                                     supported in Latest Firefox, Chrome, Opera,
                                                     Safari and Internet Explorer 10 only
                                                     </span>
                                                 </div>
                                             </div>
                                         </form>
                                         <!-- END FORM-->
                                     </div>
                                 </div>
                                 <div class="text-center">
                                     <asp:Button ID="btnSaveContinue" runat="server" Text="Save &amp; Continue" CssClass="btn btn-inverse btn-large"  />
                                     
                                 </div>--%>
                                 <div class="space20"></div>
                                 <div class="space20"></div>
                             </div>
                         </div>
                     </form>
                 </div>
                 <!-- END PROFILE PORTLET-->
             </div>
            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

