<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerViewProfile.aspx.cs" Inherits="CustomerViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <div class="row-fluid">
                 <!-- BEGIN PROFILE PORTLET-->
                 <div class="space20"></div>
                 <div class=" profile span12">
                     <div class="span2">
                         <div class="profile-photo">
                             <asp:Image ID="imgDP" runat="server" />
                             
                         </div>
                         <a href="" class="profile-features" id="basic" onclick="f1()">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                        
                     </div>
                     <div class="span10">
                         <div class="profile-head">
                             <div class="span4">
                                 <h1>
                                     <asp:Label ID="lblName" runat="server" Text=" "></asp:Label></h1>
                                
                             </div>
                              <div class="span4">
                                
                                 <asp:Button ID="btnGetCoupons" class="btn btn-edit btn-large pull-right mtop20" runat="server" Text="Get Coupons" Visible="false" OnClick="btnGetCoupons_Click" />
                             
                             
                             </div>
                         </div>
                         <div class="space15"></div>
                         <div class="row-fluid">

                             <div class="span4 bio" id="basic-info">
                                 
                                 <div class="space15"></div>
                                 <h2>Bio Graph</h2>
                                 <p><label>Name </label>:
                                     <asp:Label ID="lblFName" runat="server" Text=""></asp:Label></p>
                                 
                                 <p><label>Email </label>: 
                                     <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></p>
                                
                             </div>
                             <div class="span2">
                                <a href="" class="profile-features" id="A1" onclick="f2()">
                             <i class=" icon-phone"></i>
                             <p class="info">Contact</p>
                            </a>
                                </div>
                             <div class="span6 bio" id="contact-info">
                                
                                 
                                 <div class="space15"></div>
                                 <h2>Contact Information</h2>
                                 <p><label>Address</label>:
                                     <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></p>
                                 
                                
                                 <p><label>Phone </label>:
                                     <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label></p>
                                 
                                

                             </div>
                             <div id="company" runat="server" visible="false">
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
                                                <% Response.Write(AppUserAddress+","); %><br>
                                                <% Response.Write(AppUserCity + ","); %><br>
                                                <% Response.Write(AppUserState + "."); %><br>
                                                <abbr title="Phone">P:</abbr> <% Response.Write(AppUserMobile); %><br>

                                            </address>
                                            <address>
                                                <strong>Email:</strong><br />
                                                <a href="mailto:#"><% Response.Write(AppUserEmail); %><br></a>
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
                                     <div class="span4" id="block1" runat="server" style="width:30%">
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
                                     <div class="span4" id="block2" runat="server" style="width:30%">
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
                                     <div class="span4" id="block3" runat="server" style="width:30%">
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
                                        
                                     </div>
                                     <br />
                                 <div class="space20"></div>
                              
                                 
                                
                         </div>
                                 <div class="feedback">
                                        <h3>Feedbacks from other customers :   </h3>
                                    </div>
                                 
                                 <hr />
                                <div class="timeline-messages">
                                    <asp:Repeater ID="rptr2" runat="server">
                                     <ItemTemplate>
                                      <div class="msg-time-chat">
                                         <a class="message-img" href='<%# "CustomerViewProfile.aspx?ID="+ Eval("AppUserID") %>'><img alt="" src='<%# Eval("Photo") %>' class="avatar"></a>
                                         <div class="message-body msg-in">
                                             <span class="arrow"></span>
                                             <div class="text">
                                                 <p class="attribution"><a href='<%# "CustomerViewProfile.aspx?ID="+ Eval("AppUserID") %>'>  <%# Eval("Name") %> </a> &nbsp  at  <%# Eval("Time") %> </p>
                                                 <p><%# Eval("Feedback") %></p>
                                             </div>
                                         </div>
                                     </div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                         
                                         <div id="ff" runat="server">
                                         <h3>Feedback</h3>
                                         
                                         <div class="space20"></div>
                                         <div class="form-inline ">
                                             
                                             <div class="control-group">
                                                 <asp:TextBox TextMode="MultiLine" placeholder="Feedback" class="span12" rows="5" runat="server" ID="txtFeedback"></asp:TextBox>
                                             </div>
                                             <div class="text-center">
                                                 <asp:Button id="btnSubmit" class="btn btn-success" runat="server" type="submit" 
                                                     Text="Submit" onclick="btnSubmit_Click"></asp:Button>
                                                     <div class="space20"></div>
                                             </div>
                                         </div>
                                         </div>
                                     </div>
                             </div>
                             
                         </div>
                     </div>
                 </div>
                 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">

</asp:Content>

