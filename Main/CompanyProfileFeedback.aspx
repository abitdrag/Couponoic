<%@ Page Title="" Language="C#" MasterPageFile="~/InternalCompanyProfile.master" AutoEventWireup="true" CodeFile="CompanyProfileFeedback.aspx.cs" Inherits="CompanyProfileFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="InternalBody" Runat="Server">


 <a name="feedback_here"></a>
                                    <div class="text-center">
                                 <h3>Feedbacks from Customers :   </h3>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InternalScript" Runat="Server">
</asp:Content>

