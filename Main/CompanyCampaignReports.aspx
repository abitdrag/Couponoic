<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="CompanyCampaignReports.aspx.cs" Inherits="CompanyCampaignReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->
                   
                   <!-- END THEME CUSTOMIZER-->
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                   <h3 class="page-title">
                    Campaign Reports
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
                           Campaign Report
                       </li>
                   
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
  <!-- END PAGE HEADER-->
            <!-- BEGIN Charts widget-->
<div class="row-fluid">
  <div class="span12">
  <div class="widget">
            <div class="widget-title"></div>
            <div class="widget-body">
                <div class="row-fluid">
                <!-- All Affiliates Table -->
                <h3>Coupons Distributed to Affiliate :</h3><br />
                    <h4>A. Individual Report :</h4><br />
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
    		                    style="display:block"
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
                    <div class="span11 " style="visibility:visible" runat="server">
                         <div id="AttendancePercentagesPie"></div>
                         <asp:Label ID="hidden1" runat="server" Text=" " />
                    </div>
                     <div class="space12"></div>
                    <hr />
                    <br />
                    <br />
                    
                <!-- Affiliate Company Details-->
                    <h4>B. Overall Report :</h4><br />
                <table 
    		                    title="Attendance Percentages" 
    		                    id="CompanyAffiliate2" 
    		                    summary="pieDescription" 
    		                    data-attc-createChart="true"
    		                    data-attc-colDescription="CompanyAffiliate2Description" 
    		                    data-attc-colValues="CompanyAffiliate2Values" 
    		                    data-attc-location="CompanyAffiliate2Pie" 
    		                    data-attc-hideTable="true" 
    		                    data-attc-type="bar"
    		                    data-attc-googleOptions='{"is3D":true}'
    		                    data-attc-controls='{}'
    		                    style="display:block"
                                >
		                    <thead>
			                    <tr>
				                    <th id="CompanyAffiliate2Description">Ownership</th>
				                    <th id="CompanyAffiliate2Values">Coupons</th>
			                    </tr>
		                    </thead>
		                    <tbody>
                             
				                        <tr>
					                        <td>Company</td>
					                        <td><%= NOCCompany %></td>
				                        </tr>
                                          <tr>
					                        <td>Affiliate</td>
					                        <td><%= NOCAffiliate %></td>
				                        </tr>
		                    </tbody>
	                    </table>
                    <div class="span11" style="visibility:visible">
                          <div id="CompanyAffiliate2Pie"></div>
                          <p style="margin-left:100px">Distributed Coupons : <%= NOCAffiliate %><br />
                          Available Coupons : <%= NOCCompany %> <br /> 
                          Total Coupons : <%= NOCTotal %> <br />
                          </p>
                    </div>
                     <div class="space12"></div>
                    <hr />

                <!-- Affiliate And Customer -->
                <br />
                    <br />
                    <br />
                    <h3>Coupons Sold by Affiliates to Customers : </h3><br />
                    <h4>A. Individual Report of Each Affiliate </h4>
                <table 
    		                    title="Attendance Percentages" 
    		                    id="SoldByAffiliates" 
    		                    summary="pieDescription" 
    		                    data-attc-createChart="true"
    		                    data-attc-colDescription="AffiliateName" 
    		                    data-attc-colValues="NOCSoldByAffiliate" 
    		                    data-attc-location="SoldByAffiliatesPie" 
    		                    data-attc-hideTable="true" 
    		                    data-attc-type="column"
    		                    data-attc-googleOptions='{"is3D":true}'
    		                    data-attc-controls='{}'
    		                    style="display:block"
                                >
		                    <thead>
			                    <tr>
				                    <th id="AffiliateName">Affiliate Name</th>
				                    <th id="NOCSoldByAffiliate">Coupons Sold By Affiliate</th>
			                    </tr>
		                    </thead>
		                    <tbody>
                                   <asp:Repeater ID="SoldByAffiliate" runat="server">
                                    <ItemTemplate>
				                        <tr>
					                        <td><%# Eval("AffiliateName") %></td>
					                        <td><%# Eval("NOC") %></td>
				                        </tr>
                                     </ItemTemplate>
			                    </asp:Repeater>    
		                    </tbody>
	                    </table> 
                    <div class="span11" style="visibility:visible">
                         <div id="SoldByAffiliatesPie"></div>
                          <asp:Label ID="hidden2" runat="server" Text=" " />
                    </div>
                     <div class="space12"></div>
                   <hr />


                <!-- Affiliate and Customer--> 
                 <div class="space12"></div>
                    <h4>B. Overall Coupons sold by all affiliates togather.</h4>
                <table 
    		                    title="Attendance Percentages" 
    		                    id="TotalSoldByAffiliates" 
    		                    summary="pieDescription" 
    		                    data-attc-createChart="true"
    		                    data-attc-colDescription="TotalSoldByAffiliatesDescription" 
    		                    data-attc-colValues="TotalSoldByAffiliatesValues" 
    		                    data-attc-location="TotalSoldByAffiliatesPie" 
    		                    data-attc-hideTable="true" 
    		                    data-attc-type="bar"
    		                    data-attc-googleOptions='{"is3D":true}'
    		                    data-attc-controls='{}'
    		                    style="display:block"
                                >
		                    <thead>
			                    <tr>
				                    <th id="TotalSoldByAffiliatesDescription">Affiliates</th>
				                    <th id="TotalSoldByAffiliatesValues">Customers</th>
			                    </tr>
		                    </thead>
		                    <tbody>
                             
				                        <tr>
					                        <td>Affiliates</td>
					                        <td><%= NOCAffiliate %></td>
				                        </tr>
                                          <tr>
					                        <td>Customers</td>
					                        <td><%= NOCCustomer %></td>
				                        </tr>
		                    </tbody>
	                    </table>    
                        <div class="span11" style="visibility:visible">
                         <div id="TotalSoldByAffiliatesPie"></div>
                          <asp:Label ID="Hidden3" runat="server" Text=" " />
                    </div>
                     <div class="space12"></div>
                    <hr />

                <!-- Redeemed By Customers -->
                <div class="space12"></div>
                    <h3>Final Report</h3>
                <table 
    		                    title="Attendance Percentages" 
    		                    id="FinalReport" 
    		                    summary="pieDescription" 
    		                    data-attc-createChart="true"
    		                    data-attc-colDescription="FinalReportDescription" 
    		                    data-attc-colValues="FinalReportValues" 
    		                    data-attc-location="FinalReportPie" 
    		                    data-attc-hideTable="true" 
    		                    data-attc-type="pie"
    		                    data-attc-googleOptions='{"is3D":true}'
    		                    data-attc-controls='{}'
    		                    style="display:block"
                                >
		                    <thead>
			                    <tr>
				                    <th id="FinalReportDescription">Ownership</th>
				                    <th id="FinalReportValues">Coupons</th>
			                    </tr>
		                    </thead>
		                    <tbody>
                                
				                        <tr>
					                        <td>Company</td>
					                        <td><%= NOCCompany%></td>
				                        </tr>
                                        <tr>
					                        <td>Affiliate</td>
					                        <td><%= NOCAffiliate %></td>
				                        </tr>
                                        <tr>
					                        <td>Customer</td>
					                        <td><%= NOCCustomer%></td>
				                        </tr>
                                        <tr>
					                        <td>Franchisee / Redeemed</td>
					                        <td><%= NOCFranchisee %></td>
				                        </tr>
                                    
		                    </tbody>
	                    </table>
                     <div class="span11" style="visibility:visible">
                         <div id="FinalReportPie"></div>
                         <br />
                         <p>Total Coupons : <%= NOCTotal %></p>
                         <p>Company : <%= NOCCompany %></p>
                         <p>Affiliate : <%= NOCAffiliate %></p>
                         <p>Customer : <%= NOCCustomer %></p>
                         <p>Redeemed / Franchisee : <%= NOCFranchisee %></p>
                    </div>
                    
                    <hr />
                </div>
            </div>
  </div>

  
                
   </div>
 </div>  


</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">

 
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
 <script type="text/javascript">

     $(document).ready(function () {
         alert("1");
         $('#AttendancePercentages').attc();
         alert("2");
         $('#CompanyAffiliate2').attc();
         $('#SoldByAffiliates').attc();
         $('#TotalSoldByAffiliates').attc();
         $('#FinalReport').attc();
           
     });
     $(document).ready(function () {
         $('.campaigns')._addClass('active');
     });
</script>
<%--<script type="text/javascript">
    $(document).ready(function () {
        alert("1");
        $('#AttendancePercentages').attc();
        $('#CompanyAffiliate2').attc();
        $('#SoldByAffiliates').attc();
        $('#TotalSoldByAffiliates').attc();
        $('#FinalReport').attc();
        //    $('[data-attc-createChart]').attc();



    });

</script>
   
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="Attc/attc.googleCharts.js"></script>
    <script type="text/javascript" src="Attc/jsapi.js"></script>--%>
    

</asp:Content>

