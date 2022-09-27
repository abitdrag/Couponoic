<%@ Page Title="" Language="C#" MasterPageFile="~/InternalCompanyProfile.master" AutoEventWireup="true" CodeFile="CompanyProfile.aspx.cs" Inherits="CompanyProfile" %>

<%-- Add content controls here --%>
<asp:Content ID="Content4" ContentPlaceHolderID="InternalBody" Runat="Server">

<div class="row-fluid">
                             <div class="span10 bio">
                                  <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
	                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" updatemode="Conditional">
		                                    <ContentTemplate>
                                                <h2>About <% Response.Write(AppUsername); %></h2>
                                                <p><% if (AboutMe == "NA")
                                                 { %>
                                                  <div><p><asp:Label ID="lblNAAboutText" runat="server" Text=" No Details available. Add Details here. "></asp:Label></p></div>
                                                 <%
                                                    }
                                                 else
                                                 {    
                                                     %>
                                                    <label class="aboutText span12" >
                                                    <%
                                                    Response.Write(AboutMe); 
                                                    %> 
                                                    </label>
                                           
                                                    <%
                                                     }
                                                     %>
                                 
                                                    <asp:LinkButton ID="lbtnEditDetails" runat="server" CssClass="btn green btnEdit" href="javascript:">
                                                    <i class=" icon-edit"></i> Add / Edit Details </asp:LinkButton>
                                  
                                                    <asp:TextBox ID="txtAboutMe" Columns="100" TextMode="MultiLine" Rows="5" runat="server" class="span12 txtAboutMe"></asp:TextBox>
                                                    <br />
                                                    <asp:Linkbutton ID="lbtnOk" type="submit" class="btn  green btnOk " runat="server" 
                                                    onclick="lbtnOk_Click"><i class=" icon-yes"></i> Done</asp:Linkbutton>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn green btnCancel" href="javascript:">
                                                    <i class=" icon-cross"></i> Cancel </asp:LinkButton>
                                                    <div class="space15" />
                                         </ContentTemplate>
	                                </asp:UpdatePanel>
                                 <div class="space15"></div>
                                 <a name="shift_focus_here"></a>
                                 <div class="span4 ">
                                  <h3>Address</h3>
                                        <div class="well">
                                            <address>
                                                <strong><% Response.Write(AppUsername); %></strong><br />
                                                <% Response.Write(AppUserAddress+","); %><br/>
                                                <% Response.Write(AppUserCity + ","); %><br/>
                                                <% Response.Write(AppUserState + "."); %><br/>
                                                <abbr title="Phone">P:</abbr> <% Response.Write(AppUserMobile); %><br>

                                            </address>
                                            <address>
                                                <strong>Email:</strong><br />
                                                <a href="mailto:#" style="color:Black"><% Response.Write(AppUserEmail); %><br></a>
                                            </address>
                                        </div>
                                 </div>
                               
                                 <div class="space15"></div>
                                 <hr />
                                 
                    
                                     <div class="row-fluid">
                                        <div class="text-center">
                                     <h3>Online Contact Details :  </h3>
                                        </div>
                                          <div class="row-fluid">
                                     <div class="span4" id="block1" runat="server">
                                         <div class="row-fluid about-us">
                                             <div class="span10">
                                                 <div class="info terques">
                                                     <h1><% Response.Write(Name1); %></h1>
                                                       <p style="text-transform:lowercase;">Email : <% Response.Write(Email1); %></p>  
                                                        <p style="text-transform:lowercase;">Phone : <% Response.Write(Phone1); %></p> 
                                                 
                                                 </div>

                                             </div>
                                         </div>
                                     </div>
                                     <div class="span4" id="block2" runat="server">
                                         <div class="row-fluid about-us">
                                             <div class="span10">
                                                 <div class="info terques">
                                                     <h1><% Response.Write(Name2); %></h1>
                                                     <p style="text-transform:lowercase;">Email : <% Response.Write(Email2); %></p>
                                                     <p style="text-transform:lowercase;">Phone : <% Response.Write(Phone2); %></p>
                                                 </div>

                                             </div>
                                         </div>
                                     </div>
                                     <div class="span4" id="block3" runat="server">
                                         <div class="row-fluid about-us">
                                             <div class="span10">
                                                 <div class="info terques">
                                                     <h1><% Response.Write(Name3); %></h1>
                                                     <p style="text-transform:lowercase;">Email : <% Response.Write(Email3); %></p>
                                                     <p style="text-transform:lowercase;">Phone : <% Response.Write(Phone3); %></p>
                                                 </div>

                                             </div>
                                         </div>
                                     </div>
                                 </div>
                                            <div class="space15"></div>
                                         <asp:Button ID="btnEditBlock" runat="server" Text="Click Here to Add / Edit Contact details" CssClass="btn btn-green edit_me"/>
                                     </div>
                                     <br />
                                     <div class="form_contact">
                                        <div class="form-horizontal">
                                         <h4>Contact 1 Details :</h4>
                                        <div class="control-group">
                                        <label class="control-label">Name :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtName1" runat="server" class="span6 " required></asp:TextBox> 
                                             
                                        </div>
                                        </div>
                                        <div class="control-group">
                                        <label class="control-label" for="cemail">E-mail :</label>
                                        <div class="controls">
                                            <div class="input-icon left">
                                        <i class="icon-envelope"></i>
                                        <asp:TextBox ID="txtEmail1" runat="server" class="span6" type="email" CausesValidation="True"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail1"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ControlToValidate="txtEmail1" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrect email address"></asp:RegularExpressionValidator>
                                        </div>
                                        </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Phone :</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtPhone1" runat="server" class="span6 " required></asp:TextBox>
                                            </div>
                                        </div>
                                        
                                         <h4>Contact 2 Details :</h4>
                                       <div class="control-group">
                                        <label class="control-label">Name :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtName2" runat="server" class="span6 " required></asp:TextBox>  
                                        </div>
                                        </div>
                                        <div class="control-group">
                                        <label class="control-label">E-mail :</label>
                                        <div class="controls">
                                               <div class="input-icon left">
                                                <i class="icon-envelope"></i>
                                            <asp:TextBox ID="txtEmail2" runat="server" class="span6 valid" type="email" CausesValidation="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail2"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ControlToValidate="txtEmail2" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect email address"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Phone :</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtPhone2" runat="server" class="span6 " required></asp:TextBox>
                                            </div>
                                        </div>

                                         <h4>Contact 3 Details :</h4>
                                      <div class="control-group">
                                        <label class="control-label">Name :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtName3" runat="server" class="span6 " required></asp:TextBox>  
                                        </div>
                                        </div>
                                        <div class="control-group">
                                        <label class="control-label">E-mail :</label>
                                        <div class="controls">
                                               <div class="input-icon left">
                                                <i class="icon-envelope"></i>
                                            <asp:TextBox ID="txtEmail3" runat="server" class="span6 valid" type="email" CausesValidation="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail3"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ControlToValidate="txtEmail3" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Incorrect email address"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Phone :</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtPhone3" runat="server" class="span6 " required></asp:TextBox>
                                            </div>
                                        </div>
                                         <asp:Button ID="btnSaveDetails" runat="server" Text="Done" 
                                                onclick="btnSaveDetails_Click" class="btn green"/>

                                         </div>
                                     
                                     </div>
                              
                                 <div class="space20"></div>
                              
                                 
                                
                         </div>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="InternalScript" Runat="Server">
<script type="text/javascript">

    $(document).ready(function () {

        $('.txtAboutMe').hide();
        $('.btnOk').hide();
        $('.btnCancel').hide();
        $('.form_contact').hide();

        $('.btnEdit').click(function () {
            $('.txtAboutMe').show();
            $('.btnOk').show();
            $('.btnCancel').show();
            $('.btnEdit').hide();
            $('.txtAboutMe').text(($('.aboutText').text()).trim());
        });

        $('.btnOk').click(function () {
            $('.txtAboutMe').hide();
            $('.btnOk').hide();
            $('.btnCancel').hide();
            $('.aboutText').text($('.txtAboutMe').val().toString());
            $('.btnEdit').show();
        });

        $('.btnCancel').click(function () {

            $('.txtAboutMe').hide();
            $('.btnOk').hide();
            $('.btnCancel').hide();
            $('.btnEdit').show();

        });

        $('.edit_me').click(function () {
            $('.form_contact').show();
            $('.edit_me').hide();
        });

    });
    
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.profile')._addClass('active');
    });
</script>
</asp:Content>
