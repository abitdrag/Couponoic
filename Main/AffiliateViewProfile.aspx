<%@ Page Title="" Language="C#" MasterPageFile="~/AffiliateMasterPage.master" AutoEventWireup="true" CodeFile="AffiliateViewProfile.aspx.cs" Inherits="AffiliateViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                             <asp:Image ID="imgDP" runat="server" />
                             
                         </div>
                         <a href="#" class="profile-features active">
                             <i class=" icon-user"></i>
                             <p class="info">Profile</p>
                         </a>
                         
                         
                     </div>
                     <div class="span10">
                         <div class="profile-head">
                             <div class="span4">
                                 <h1>
                                     <asp:Label ID="lblName" runat="server" Text=" "></asp:Label></h1>
                                <div class="span4"></div>
                             </div>

                            

                             <div class="span4">
                                
                                 <%--<asp:Button ID="btnGetCoupons" class="btn btn-edit btn-large pull-right mtop20" 
                                     runat="server" Text="Get Coupons" onclick="btnGetCoupons_Click" />--%>
                                 <asp:Button ID="btnFollow" runat="server" Text="" Visible="false" />
                             
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
                                <a href="" class="profile-features active" id="A1" onclick="f2()">
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
                             
                         </div>
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
                                         <h3>Feedback</h3>
                                         
                                         <div class="space20"></div>

                                         <div class="form-inline ">
                                             
                                             <div class="control-group">
                                                 <asp:TextBox TextMode="MultiLine" placeholder="Feedback" class="span12" rows="5" runat="server" ID="txtFeedback"></asp:TextBox>
                                             </div>
                                             <div class="text-center">
                                                 <asp:Button id="btnSubmit" class="btn btn-success" runat="server" type="submit" 
                                                     Text="Submit" onclick="btnSubmit_Click"></asp:Button>
                                             </div>
                                             <div class="space20"></div>
                                         </div>
                                     </div>
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

