<%@ Page Title="" Language="C#" MasterPageFile="~/GuestUserMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/uniform/css/uniform.default.css" />
    <link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="container" class="row-fluid" style="background-image:url('assets/bg5.jpg');background-attachment:scroll;background-repeat:inherit;margin-top:0px">
      <!-- BEGIN SIDEBAR -->
      <div tabindex="5000" style="overflow: hidden;" class="sidebar-closed">
          <div id="sidebar" class="nav-collapse collapse">

              <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
              <div class="navbar-inverse">
                  
              </div>
              <!-- END RESPONSIVE QUICK SEARCH FORM -->
              <!-- BEGIN SIDEBAR MENU -->
              <ul class="sidebar-menu">
                 
              </ul>
              <!-- END SIDEBAR MENU -->
          </div>
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->
      <div id="main-content" class="span8" style="background-image:url('assets/bg5.jpg');background-attachment:scroll;background-repeat:inherit">
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid" style="margin-top:50px">
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
               
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid span12" style="background-image:url('assets/bg5.jpg');background-attachment:scroll;background-repeat:inherit">
                <div class="span12" style="background-image:url('assets/bg5.jpg');background-attachment:scroll;background-repeat:inherit">
                    <!-- BEGIN SAMPLE FORMPORTLET-->
                    <div class="widget green" style="border-style:groove; background-color:Window;border-radius:5px">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i>Register here</h4>
                            <span class="tools">
                          
                            </span>
                        </div>
                        <div class="widget-body">
                            <!-- BEGIN FORM-->
                            <div id="loginform" action="" method="post" class="form-horizontal" runat="server">
                                <asp:Label ID="lblOptional" runat="server" Text=" " style="color:red"></asp:Label>
            <div class="control-group">
                <label class="control-label">
                    Name</label>
                <div class="controls">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name" class="input-large" required/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Email</label>
                <div class="controls">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter email" class="input-large"  ToolTip="Enter email here" CausesValidation="True"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrect email address"></asp:RegularExpressionValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Username</label>
                <div class="controls">
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="" class="input-large" required/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Password</label>
                <div class="controls">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="" class="input-large" TextMode="Password" CausesValidation="True" required/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Confirm Password</label>
                <div class="controls">
                    <asp:TextBox ID="txtConfrmPassword" runat="server" placeholder="" class="input-large" TextMode="Password" required/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="txtConfrmPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both passwords should match" ControlToValidate="txtConfrmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            
             <asp:ScriptManager ID="ScriptManager1" runat="server">
             </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                 <div class="control-group">
               <label class="control-label"> State</label> 
               <asp:DropDownList ID="ddlState" style="margin-left:20px;margin-bottom:10px" runat="server" CssClass="control-list" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Selected="True">---select---</asp:ListItem>
                    </asp:DropDownList>
                      <span class="help-inline"></span></div>
                      <div class="control-group">
               <label class="control-label"> City</label> 
               <asp:DropDownList CssClass="control-list" style="margin-left:20px"  ID="ddlCity" runat="server"></asp:DropDownList>
                    
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="control-group">
                <label class="control-label">
                    Area</label>
                <div class="controls">
                    <asp:TextBox ID="txtArea" runat="server" placeholder="" class="input-large" required/>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtArea"></asp:RequiredFieldValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Mobile</label>
                <div class="controls">
                    <asp:TextBox ID="txtMobile" runat="server" placeholder="" class="input-large" required/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtMobile" ValidationExpression="^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect number"></asp:RegularExpressionValidator>
                    <span class="help-inline"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    Register yourself as</label>
                <div class="controls">
                    <asp:DropDownList ID="typeDropDown" runat="server" class="dd1">
                        <asp:ListItem Value="Agent" Text="Agent" />
                        <asp:ListItem Value="Company" Text="Company" />
                        <asp:ListItem Value="Customer" Text="Customer" />
                        
                    </asp:DropDownList>
                </div>
            <br />
             <%--<div class="control-group category">
                <label class="control-label">
                   Select a Category :</label>
                <div class="controls">
                    <asp:DropDownList  ID="DropDownList2" runat="server" class="chzn-select span6 chzn-done category" multiple="multiple" TabIndex="6"  ClientID="sel3XB">
                        
                    </asp:DropDownList>
                </div>
                
            </div>--%>
            <div class="control-group">
                <label class="control-label">
                    Upload a profile picture</label>
                <asp:FileUpload ID="profilepic" runat="server" />
            </div>
            <div class="form-actions">
                
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn blue" />
                <asp:LinkButton ID="lbtnSave" CssClass="btn blue" runat="server" 
                    onclick="lbtnSave_Click"><i class="icon-ok"></i>Save</asp:LinkButton>
                    
                
            </div>
            </div>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END SAMPLE FORM PORTLET-->
                </div>
            </div>
           

            <!-- END PAGE CONTENT-->
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
      <!-- END PAGE -->
   </div>
    
    
    
    
    
    
    
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
    <%--<script type="text/javascript">
        $(document).ready(function () {
           
            $('.category').hide();
          
            $('.dd1').change(function () {
                
                if (($(".dd1 :selected").text())=="Company"){
                    
                    $('.category').show();
                }
                else {
                    $('.category').hide();
                }
            });
        });

        
    </script>--%>
    <script type="text/javascript" src="assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
    <script src="js/form-component.js"></script>
    <script src="js/jQuery.dualListBox-1.3.js" language="javascript" type="text/javascript"></script>


</asp:Content>
