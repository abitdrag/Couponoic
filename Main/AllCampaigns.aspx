<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="AllCampaigns.aspx.cs" Inherits="idea_AllCampaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style-responsive.css" rel="stylesheet" />
   <link href="css/style-default.css" rel="stylesheet" id="style_color" />
   <link href="css/timeline-component.css" rel="stylesheet"  type="text/css" />


    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style-responsive.css" rel="stylesheet" />
   <link href="css/style-default.css" rel="stylesheet" id="Link1" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div runat="server">
<div class="container-fluid"  style="min-height:1080px;background-color:#4A8BC2;margin-left:180px" >
<div class="row-fluid" <%--style="margin-left:80px"--%>>
                 <div class="span12">
                     <!-- BEGIN BLOG PORTLET-->
                     <div class="row-fluid"  style="min-height:1080px;background-color:White">
                         <div class="span6">
                             <div class="row-fluid" >

                                 <%--<asp:Repeater ID="Repeater1" runat="server">
                                 <ItemTemplate>
                                  <div class="blog">
                                    
                                    
                                     <div class="span10">
                                         <h2>
                                             <%# Eval("Name") %>
                                         
                                         </h2>
                                         
                                            
                                       
                                         <img alt="" src='<%# Eval("ImagePath") %>' style="width:500px">
                                       Start Date:<%# Eval("StartDate", "{0:dd-MM-yyyy}")%> </br>

                                       End Date:<%# Eval("EndDate", "{0:dd-MM-yyyy}")%> </br>
                                        Base Value : <%# Eval("BaseValue") %><br />
                                          Benefit Value : <%# Eval("BenefitValue") %><br />
                                     </div>
                                 </div>
                                
                                
                                
                                
                                
                                </ItemTemplate>
                           
                                </asp:Repeater>--%>
                                 <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater2_ItemCommand">
            
            <HeaderTemplate>
            <div class="row-fluid">
                 <ul class="metro_tmtimeline">
            </HeaderTemplate>
            
            <ItemTemplate>

            <li class="green">
                <asp:HiddenField ID="hdnCoupon" Value='<%#Eval("CampaignID") %>' runat="server" />
                            <div class="metro_tmicon" style="left:5%">
                                
                            </div>
                            <div class="metro_tmlabel" style="margin-left:10%">
                               
                               <div class="blog" style="width:100%">
                                     <div class="span3 orange" style="margin-top:10%">
                                         <a href="javascript:;" class="blog-features date active" style="height:65px;padding:1px">
                                             <p style="vertical-align:middle"><%#DataBinder.Eval(Container,"DataItem.Type") %></p>
                                         </a>
                                         <a href="javascript:;" class="blog-features comments active" style="height:65px;padding:1px">
                                             
                                             <i class=" icon-time" style="position:relative;margin-top:0px"></i>
                                             <p class="info" style="font-size:smaller"><%#Eval("StartDate","{0:dd-MMM}") %> to <%#Eval("EndDate","{0:dd-MMM}") %></p>
                                         </a>
                                         <a href="javascript:;" class="blog-features comments active" style="height:65px;padding:1px">
                                             <i class=" icon-dollar"></i>
                                             <p class="info">Rs. <%# DataBinder.Eval(Container,"DataItem.BaseValue") %> each</p>
                                         </a>

                                         <asp:LinkButton ID="LinkButton1" runat="server" class="blog-features comments active" style="height:65px;padding:1px" Text="Buy" CommandName="Select" CommandArgument='<%#Eval("CampaignID") %>'></asp:LinkButton>
                                         
                                         
                                     </div>
                                     <div class="span8">
                                         <h2 style="color:White">
                                             <%# DataBinder.Eval(Container,"DataItem.Name") %>
                                         </h2>
                                         <p>
                                            <div> BY <a href="javascript:;" class="author">
                                                <asp:Label ID="lblCompanyName" runat="server" Text='<%#Eval("CompanyName") %>'></asp:Label></a>|
                                            
                                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CampaignID") %>' />
                                            <%--<asp:LinkButton runat="server" ID="btnFav" CssClass="btn btn-info" Text="Add Company To Favourites"></asp:LinkButton>--%></div>
                                         </p>
                                         <img src='<%# Eval("ImagePath") %>' style="width:300px; height:200px"/>
                                         Available Coupons:  <asp:Label ID="lblNoOfCoupons" runat="server" Text=""></asp:Label></br>

                                         Number of coupons:<asp:DropDownList ID="DropDownList1" runat="server">


                                         </asp:DropDownList> <%-- Validation has to be done--%>
                                         
                                     </div>
                                     
                                 </div> 
                            </div>
                        </li>
            </ItemTemplate>

            
            <FooterTemplate>
            </ul>
            </div>
            </FooterTemplate>
            
            </asp:Repeater>
                                 
                               <%--<div class="row-fluid">
                 <ul class="metro_tmtimeline">
                     <asp:Repeater ID="Repeater1" runat="server">
                     <AlternatingItemTemplate>
                        <li class="green">
                            
                            <div class="metro_tmicon">
                               
                            </div>
                            <div class="metro_tmlabel ">
                            
                                <h2> <%# Eval("Name") %></h2>
                                
                                 <img alt="" src='<%# Eval("ImagePath") %>' style="width:250px;min-height:200px">
                                 <p>Start Date:<%# Eval("StartDate", "{0:dd-MM-yyyy}")%></p>
                                  <p>End Date:<%# Eval("EndDate", "{0:dd-MM-yyyy}")%></p>
                                 
                                  <p>Base Value:<%# Eval("BaseValue") %></p>
                                   <p>Benefit Value:<%# Eval("BenefitValue") %></p>
                                <a class="btn" href="#">
                                    Read more <i class="icon-circle-arrow-right"></i>
                                </a>
                            </div>
                        </li>
                        </AlternatingItemTemplate>
                        <ItemTemplate>
                        <li class="purple">
                            
                            <div class="metro_tmicon">
                                
                            </div>
                            <div class="metro_tmlabel">
                                <h2> <%# Eval("Name") %></h2>
                                 <img alt="" src='<%# Eval("ImagePath") %>' style="width:250px">
                                 <p>Start Date:<%# Eval("StartDate", "{0:dd-MM-yyyy}")%></p>
                                  <p>End Date:<%# Eval("EndDate", "{0:dd-MM-yyyy}")%></p>
                                 
                                  <p>Base Value:<%# Eval("BaseValue") %></p>
                                   <p>Benefit Value:<%# Eval("BenefitValue") %></p>
                                <a class="btn" href="#">
                                    Read more <i class="icon-circle-arrow-right"></i>
                                </a>
                            </div>
                        </li>
                        </ItemTemplate>
                        </asp:Repeater>

                    </ul>
            </div>--%>

                                 <%--<div class="custom-pagination pagination-centered">
                                     <ul>
                                         <li><a href="javascript:;">«</a></li>
                                         <li><a href="javascript:;">1</a></li>
                                         <li><a href="javascript:;">2</a></li>
                                         <li><a href="javascript:;">3</a></li>
                                         <li><a href="javascript:;">4</a></li>
                                         <li><a href="javascript:;">»</a></li>
                                     </ul>
                                 </div>--%>
                             </div>
                         </div>
                         <div class="span4" style="margin-left:150px">
                             <div class="blog-side-bar blue-box">
                                <h2> <i class=" icon-tasks"></i> category</h2>
                                 <ul>
                                     <li>
                                         <a href="#">
                                             <i class=" icon-star"></i>
                                             <span>Food</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class=" icon-star"></i>
                                             <span>Clothing</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>Electronics</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>FootWear</span>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <i class="icon-star"></i>
                                             <span>Home Decor</span>
                                         </a>
                                     </li>
                                    
                                 </ul>
                             </div>
                            
                             
                            
                         </div>
                     </div>
                     <!-- END BLOG PORTLET-->
                 </div>
</div>

</div>

</div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.Home')._addClass('active');
    });

    

    });

});
</script>
</asp:Content>

