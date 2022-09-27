<%@ Page Title="" Language="C#" MasterPageFile="~/InternalCompanyProfile.master" AutoEventWireup="true" CodeFile="CompanyEditFranchisee.aspx.cs" Inherits="CompanyEditFranchisee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="InternalBody" Runat="Server">
<div class="widget red span12 addForm" style="margin-left:0px">
        <div class="form-horizontal">
            <div class="widget-title">
                            <h4><i class="icon-reorder"></i>Edit Franchisee Details Here</h4>
                          
                        </div>
            <div class="widget-body">
                <%--<div class="control-group">
                <label class="control-label">Name :</label>
                
                <div class="controls">
                    <asp:Label ID="lblName" runat="server" Text=" " Cssclass="lblName"></asp:Label>
                    <button class="btn btn-info"><i class="icon-edit btnName"></i></button>
                    <asp:TextBox ID="txtName" runat="server" class="span6 " CssClass="txtName" ></asp:TextBox>  
                    <button class="btn btn-info"><i class="icon-edit btnName"></i></button>
                    <button class="btn btn-info"><i class="icon-edit btnName"></i></button>
                </div>
                </div>--%>
                <div class="control-group">
                <label class="control-label">Name :</label>
                <div class="controls">
                    <asp:TextBox ID="txtName" runat="server" class="span6 " ></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Address :</label>
                <div class="controls">
                    <asp:TextBox ID="txtAddress" runat="server" class="span6 " TextMode="MultiLine" Rows="3"></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">City :</label>
                <div class="controls">
                    <asp:TextBox ID="txtCity" runat="server" class="span6 " ></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">State :</label>
                <div class="controls">
                    <asp:TextBox ID="txtState" runat="server" class="span6 " ></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                                        <label class="control-label">E-mail :</label>
                                        <div class="controls">
                                            <div class="input-icon left">
                                        <i class="icon-envelope"></i>
                                        <asp:TextBox ID="txtEmail" runat="server" class="span6 " ></asp:TextBox>
                                        </div>
                                        </div>
                                        </div>
                <div class="control-group">
                <label class="control-label">Mobile :</label>
                <div class="controls">
                    <asp:TextBox ID="txtMobile" runat="server" class="span6 " ></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Username :</label>
                <div class="controls">
                    <asp:TextBox ID="txtUsername" runat="server" class="span6 " ></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Old Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtPassword" runat="server" class="span6 "></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">New Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtNPassword" runat="server" class="span6 " TextMode="Password" CausesValidation="True"></asp:TextBox>  
                </div>
                </div>
            </div>
            <asp:LinkButton ID="lbtnSaveDetails" runat="server" onclick="btnSaveDetails_Click" class="btn btn-success" style="margin-left:30px; margin-bottom:20px"
            CommandArgument='<% Request.QueryString("ID") %>'><i class="icon-ok"></i> Done</asp:LinkButton>
            <asp:LinkButton ID="lbtnCancel" runat="server" Cssclass="btn btn-inverse " 
                style="margin-left:30px; margin-bottom:20px" onclick="lbtnCancel_Click"><i class="icon-ban-circle icon-white"></i> Cancel</asp:LinkButton>
            <asp:LinkButton ID="lbtnRefresh" runat="server" Cssclass="btn green " 
                style="margin-left:30px; margin-bottom:20px" onclick="lbtnRefresh_Click"><i class="icon-refresh icon-white"></i> Refresh</asp:LinkButton>
            </div>
                                     
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InternalScript" Runat="Server">
   
</asp:Content>

