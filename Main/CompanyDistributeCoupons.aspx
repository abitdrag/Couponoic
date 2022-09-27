<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyDistributeCoupons.aspx.cs" Inherits="CompanyDistributeCoupons" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    $(document).ready(function () {
        $('.campaigns')._addClass('active');
        $('.activeCampaign')._addClass('active');
    });
</script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                     Distribute Coupons 
                   </h3>
                   <ul class="breadcrumb">
                       <li>
                           <a href="#">Home</a>
                           <span class="divider">/</span>
                       </li>
                       <li>
                           <a href="#">All Campaigns</a>
                           <span class="divider">/</span>
                       </li>
                       <li class="active">
                           Distribute Coupons
                       </li>
                       <li class="pull-right search-wrap">
                           <form action="search_result.html" class="hidden-phone">
                               <div class="input-append search-input-area">
                                   <input class="" id="appendedInputButton" type="text">
                                   <button class="btn" type="button"><i class="icon-search"></i> </button>
                               </div>
                           </form>
                       </li>
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN EDITABLE TABLE widget-->
<div class="row-fluid">
    <div class="span12">
        <div class="row-fluid">
        <div class="span12">
          <div class="widget white">
                <div class="widget-title">
                    <h4><i class="icon-reorder"></i> Distribute Coupons </h4>
                </div>
                <div class="widget-body">
                <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
	                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" updatemode="Conditional">
		                                    <ContentTemplate>
                                <div class="row-fluid">
                                            <div class="span6">
                                                    <div>
                                                    <label><h4>Select Affiliate and Add to the Campaign </h4></label><br />
                                                    <table>
                                                        
                                                        <tr>
                                                                <td>City:</td>
                                                                <td><asp:DropDownList CssClass="control-list" ID="ddlCity" runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList> </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td>Affiliate Name:</td>
                                                            <td><asp:DropDownList ID="AffiliateList" runat="server" CssClass="control-list" OnSelectedIndexChanged="AffiliateList_SelectedIndexChanged" AutoPostBack="True">
                                                                <asp:ListItem Selected="True">---select---</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                        </tr>
                                                        <tr>
                                                        <td>Number of Coupons:</td>
                                                        <td><asp:TextBox ID="txtNOC" runat="server"></asp:TextBox></td>
                                                        </tr>
                                                        </table>
                                                        <br/>
                                    
                                                        <div class="btn-group">
                                                        <%-- <asp:Button ID="Button1" runat="server" Text="Add" class="btn green" />--%>
                                                            <asp:LinkButton ID="btnSendToAffiliate" runat="server" class="btn green" 
                                                                onclick="btnSendToAffiliate_Click"><i class="icon-share-alt"></i> Distribute Coupons </asp:LinkButton>
                                                        </div>
                                                        <div class="space15"></div>
                                                        <asp:Label ID="lblHidden" runat="server" Text=" " style="color:red"></asp:Label>
                                                    </div>
                                                    <div class="space15"></div>
                                               
                                                </div>
                                            <div class="span6">
                                                    <div class="span12" runat="server" id="graphA">
                                                    <table 
    		                                                    title="Attendance Percentages" 
    		                                                    id="AttendancePercentages" 
    		                                                    summary="pieDescription" 
    		                                                    data-attc-createChart="true"
    		                                                    data-attc-colDescription="pieDescription" 
    		                                                    data-attc-colValues="pieValues" 
    		                                                    data-attc-location="AttendancePercentagesPie" 
    		                                                    data-attc-hideTable="true" 
    		                                                    data-attc-type="pie"
    		                                                    data-attc-googleOptions='{"is3D":true}'
    		                                                    data-attc-controls='{}'
    		                                                    >
			                                                <thead>
				                                                <tr>
					                                                <th id="pieDescription">Affiliate Name</th>
					                                                <th id="pieValues">Number Of Coupons</th>
				                                                </tr>
			                                                </thead>
			                                                <tbody>
                                                                <asp:Repeater ID="rptrPieChart" runat="server">
                                                                    <ItemTemplate>
				                                                        <tr>
					                                                        <td><%# Eval("Name") %></td>
					                                                        <td><%# Eval("NOC") %></td>
				                                                        </tr>
                                                                    </ItemTemplate>
				                                                </asp:Repeater>
			                                                </tbody>
		                                                </table>
		                        <div id="AttendancePercentagesPie"></div>
                           
                                            </div>
                                            </div>
                                 </div> 
                           
                <div class="row-fluid">
                    <div class="span12">
                        
                      <div class="widget red span12" style="background: #fff">
                            <div class="widget-title" style="padding-left:10px">
                                <h4><i class="icon-reorder"></i> Details </h4>
                            
                            </div>
                            <div class="widget-body">
                                <table class="table table-striped">
                                <thead>
                                    <th>Photo</th>
                                    <th>Name</th>
                                    <th>State</th>
                                    <th>City</th>
                                    <th>Contact No</th>
                                    <th>Number Of Coupons</th>
                                </thead>
                                <asp:Repeater ID="gridTable" runat="server">
                                                 
                                   <ItemTemplate>
                                   <tr>
                                   <td><asp:Image ID="Image1" ImageUrl='<%# Eval("Photo") %>'  AlternateText="Not Available" runat="server" Height="70px"/></td>
   
                                   <td><%# Eval("Name") %></td>

                                   <td><%# Eval("State") %></td>
   
                                   <td><%# Eval("City") %></td>

                                   <td><%# Eval("Mobile") %></td>

                                   <td><%# Eval("NOC") %></td>
                                       
                                   <td><asp:LinkButton ID="lbtnVisitAffiliate" runat="server" class="btn green" 
                                                                PostBackUrl='<%# "CustomerViewProfile.aspx?ID=" + Eval("AppUserID") %>'><i class="icon-eye-open"></i> Visit Affiliate </asp:LinkButton></td>

                                  </tr>
                                   </ItemTemplate>
                                 
                                </asp:Repeater>
                                </table>
                            </div>
                      </div>
                      
                </div>
                                </ContentTemplate>
	                        </asp:UpdatePanel>
              </div>
           </div>
        </div>    
        </div>
     </div>
     
 </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
    
    <script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
    <script type="text/javascript" src="js/editable-table.js"></script>
    <script>
        jQuery(document).ready(function () {
            EditableTable.init();
        });
   </script>
   <%--<script type="text/javascript" src="http://www.google.com/jsapi"></script>--%>
   <script type="text/javascript" src="Attc/jsapi.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="Attc/attc.googleCharts.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-attc-createChart]').each(function () {
                $(this).attc();
            });

        });
   </script>
   


</asp:Content>

