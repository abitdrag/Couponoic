<%@ Page Title="" Language="C#" MasterPageFile="~/InternalCompanyProfile.master" AutoEventWireup="true" CodeFile="CompanyFranchisee.aspx.cs" Inherits="CompanyFranchisee" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="InternalBody" Runat="Server">

    <input type="button" value="Add new Franchisee" class="btn btn-success addF"/>
    <div class="space15"></div>
    <div class="widget white-full span12 addForm" style="margin-left:0px">
        <div class="form-horizontal">
            <div class="widget-title">
                            <h4><i class="icon-reorder"></i>Register New Franchisee Here</h4>
                            <span class="tools">
                           <a class="icon-chevron-down" href="javascript:;"></a>
                           <a class="icon-remove" href="javascript:;"></a>
                           </span>
                        </div>
            <div class="widget-body">
                <div class="control-group">
                <label class="control-label">Name :</label>
                <div class="controls">
                    
                    <asp:TextBox ID="txtName" runat="server" class="span6" required></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Address :</label>
                <div class="controls">
                    <asp:TextBox ID="txtAddress" runat="server" class="span6 " TextMode="MultiLine" Rows="3" required></asp:TextBox>  
                </div>
                </div>
               <%-- <div class="control-group">
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
                </div>--%>

                 <asp:ScriptManager ID="ScriptManager2" runat="server">
             </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
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
                                        <label class="control-label">E-mail :</label>
                                        <div class="controls">
                                            <div class="input-icon left">
                                        <i class="icon-envelope"></i>
                                        <asp:TextBox ID="txtEmail" runat="server" class="span6 " type="email" required></asp:TextBox>
                                        </div>
                                        </div>
                                        </div>
                <div class="control-group">
                <label class="control-label">Mobile :</label>
                <div class="controls">
                    <asp:TextBox ID="txtMobile" runat="server" class="span6 " required></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Username :</label>
                <div class="controls">
                    <asp:TextBox ID="txtUsername" runat="server" class="span6 " required></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtPassword" runat="server" class="span6 " TextMode="Password" CausesValidation="True" required></asp:TextBox>  
                </div>
                </div>
                <div class="control-group">
                <label class="control-label">Confirm Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtCPassword" runat="server" class="span6 " TextMode="Password" CausesValidation="True" required></asp:TextBox>  
                </div>
                </div>
            </div>
            <asp:Button ID="btnSaveDetails" runat="server" Text="Done" 
                class="btn green" style="margin-left:30px; margin-bottom:20px" 
                onclick="btnSaveDetails_Click"/>
            <input id="btnCancel" type="button" value="Cancel" class="btn green" style="margin-left:30px; margin-bottom:20px"/>
            </div>
                                     
    </div>
    <div class="space15"></div>


<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
<ContentTemplate>
<div class="widget white-full span12" style="margin-left:0px">
                        <div class="widget-title">
                            <h4><i class="icon-reorder"></i>All Franchisees</h4>
                        </div>
                        <div class="widget-body">
                            
                            <div class="accordion" id="accordion1">
                            <asp:Repeater ID="rpteFranchisees" runat="server" >
                            <ItemTemplate>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href='<%# "#"+Eval("Name") %>'>
                                            <%# Eval("Name") %>
                                        </a>
                                    </div>
                                    <div id='<%# "#"+Eval("Name") %>' class="accordion-body collapse in">
                                        <div class="accordion-inner">
                                           Address :<br />
                                           <%# Eval("Address") %> , <br />
                                           <%# Eval("City") %> , <br />
                                           <%# Eval("State") %>  <br />
                                           Email :<%# Eval("Email") %><br />
                                           Phone :<%# Eval("Mobile") %><br />
                                           <a href='<%#"CompanyEditFranchisee.aspx?ID="+Eval("AppUserID") %>' class="btn btn-primary"><i class="icon-edit"></i> Edit Details</a>
                                           <asp:LinkButton ID="btnDelete" class="btn btn-danger" runat="server"  Text="Delete" OnClick="btnDelete_Click" CommandArgument='<%#Eval("AppUserID") %>' ><i class="icon-trash"></i> Delete </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            </asp:Repeater>
                               
                            </div>
                            
                        </div>
                    
                </div>
 </ContentTemplate>

</asp:UpdatePanel> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InternalScript" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.addForm').hide();
        $('.addF').click(function () {
            $('.addForm').show();
            $('.addF').hide();
        });
        $('#btnCancel').click(function () {
            $('.addForm').hide();
            $('.addF').show();
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.franchisees')._addClass('active');
    });
</script>
</asp:Content>

