<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="AddCampaign.aspx.cs" Inherits="AddCampaign" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
    <link rel="stylesheet" type="text/css" href="assets/jquery-tags-input/jquery.tagsinput.css" />
    <link rel="stylesheet" type="text/css" href="assets/clockface/css/clockface.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" href="assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker.css" />--%>
    <link href="assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/uniform/css/uniform.default.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css" />
       
   
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
                     Generate Campaign
                   </h3>
                   <ul class="breadcrumb">
                      
                       <li>
                           <a href="#">Campaigns</a>
                           <span class="divider">/</span>
                       </li>
                       
                       <li class="active">
                           Add New Campaign
                       </li>
                       
                   </ul>
                   <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            
        
         
         <div class="container-fluid">
                  <div class="row-fluid">
                 <div class="span12">
                     <div class="widget box green">
                         <div class="widget-title">
                             <h4>
                                 <i class="icon-reorder"></i> Generate Campaign
                             </h4>
                        <span class="tools">
                           <a href="javascript:;" class="icon-chevron-down"></a>
                           
                        </span>
                         </div>
                         <div class="widget-body">
                             <div id="Form1" class="form-horizontal" action="#" runat="server">
                                <div id="pills" class="custom-wizard-pills">
                                 <ul style="width:500px">
                                     
                                     <li><a href="#pills-tab1" data-toggle="tab">Step1</a></li>
                                     <li><a href="#pills-tab2" data-toggle="tab">Step 2</a></li>
                                     <li><a href="#pills-tab3" data-toggle="tab">Step 3</a></li>
                                     
                                 </ul>
                                 <div class="progress progress-success progress-striped active">
                                     <div class="bar"></div>
                                 </div>
                                 <div class="tab-content">
                                     <div class="tab-pane" id="pills-tab1">
                                         <h3>Fill up Basic Details</h3>
                                         <div class="control-group">
                                             <asp:label ID="Label1" class="control-label" runat="server">Name(required)</asp:label>
                                             <div class="controls">
                                                 <asp:TextBox class="span6" runat="server" ID="txtName" placeholder="Give a name to your campaign"/>
                                             </div>
                                         </div>
                                         
                                         <div class="control-group">
                                    <label class="control-label">Start Date - End Date(required) </label>
                                    <div class="controls">
                                        <div class="input-prepend">
                                            <span class="add-on"><i class="icon-calendar"></i></span>
                                            <asp:TextBox ID="txtDateRange" runat="server" class="m-ctrl-medium reservation" ></asp:TextBox>
                                            <%--<input id="reservation" type="text" class=" m-ctrl-medium" />--%>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="control-group">
                                            
                                             <label class="control-label">Coupon Logo</label>
                                             <div class="controls">
                                                 <asp:FileUpload ID="campaignPic" runat="server" />
                                                 <span class="help-inline"></span>
                                             </div>
                                          </div>
                               
                                     </div>
                                     <div class="tab-pane" id="pills-tab2">
                                         <h3>Fill up Coupon Details</h3>
                                         <div class="control-group">
                                             <label class="control-label">Number Of Coupons(Required)</label>
                                             <div class="controls">
                                                 <asp:TextBox ID="txtCoupons" runat="server" class="span2" />
                                                 <span class="help-inline"></span>
                                             </div>
                                         </div>

                                         <div class="control-group">
                                             <label class="control-label">Base Value(required)</label>
                                             <div class="controls">
                                                 <asp:TextBox ID="txtBaseValue" runat="server" class="span2" />
                                                 <span class="help-inline"></span>
                                             </div>
                                         </div>
                                         <br />
                                        <div class="control-group radioDiv">
                                        <label class="control-label">Type of Campaign :</label>
                                        <div class="controls">
                                            
                                           
                                            <asp:RadioButtonList ID="rbtnType" runat="server" class="Stype" data-selected="Stype">
                                                <asp:ListItem Value="benefit" Text="Benefit" class="radio line"></asp:ListItem>
                                                <asp:ListItem Value="discount" Text="Discount" class="radio line"></asp:ListItem>
                                            </asp:RadioButtonList>     

                                        </div>
                                    </div>

                                         <div class="control-group type">
                                             <label class="control-label type-label"></label>
                                             <div class="controls">
                                                 <asp:TextBox runat="server" ID="txtBODValue" class="span2" />
                                                 <span class="help-inline"></span>
                                             </div>
                                         </div>
                                         
                                     </div>
                                     
                                     <div class="tab-pane" id="pills-tab3">
                                         <h3>Final step</h3>
                                         <div class="control-group">
                                             <asp:label ID="lblCategory" class="control-label" runat="server">Category(required)</asp:label>
                                             <div class="controls">
                                                 <asp:DropDownList ID="ddlCategory" runat="server">
                                                 </asp:DropDownList>
                                             </div>
                                         </div>
                                         
                                         <div class="control-group">
                                    <label class="control-label">Distribution Start Date </label>
                                    <div class="controls">
                                        <div class="input-prepend">
                                            <span class="add-on"><i class="icon-calendar"></i></span>
                                            <asp:TextBox ID="txtDSDate" runat="server" class="m-ctrl-medium dp1" ></asp:TextBox>
                                            <%--
                                              <input id="dp1" type="text" value="12-02-2012" size="16" class="m-ctrl-medium">
                                            --%>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="control-group">
                                    <label class="control-label">Description </label>
                                    <div class="controls">
                                        <div class="input-prepend">
                                            <asp:TextBox ID="txtDescription" class="input-large" runat="server" TextMode="MultiLine" placeholder="Add a short description"></asp:TextBox>
                                        </div>
                                    </div>
                                    </div>
                                         <asp:Button ID="btnConfirm" runat="server" Text="Generate Campaign" CssClass="btn-success" onclick="btnConfirm_Click"/>

                                     </div>
                                     <ul class="pager wizard">
                                         <li class="previous first"><a href="javascript:;">First</a></li>
                                         <li class="previous"><a href="javascript:;">Previous</a></li>
                                         <li class="next last"><a href="javascript:;">Last</a></li>
                                         <li class="next"><a  href="javascript:;">Next</a></li>
                                     </ul>
                                 </div>
                             </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>   
       </div>


      <!-- BEGIN JAVASCRIPTS -->
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsHolder" Runat="Server">
<script type="text/javascript" src="assets/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
   <script type="text/javascript" src="js/jquery.blockui.js"></script>
   <script type="text/javascript" src="js/form-wizard.js"></script>
   <script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
   <script src="js/form-component.js"></script>
 <script type="text/javascript" src="assets/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="assets/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
    <script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
   <script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
   <script type="text/javascript" src="js/jquery.jquery.nicescroll.js"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            //jquery for benefit/discount selection.
            $('.type').hide();

            $('.Stype').click(function () {

                var t = $(".radioDiv input[type='radio']:checked").val();

                if (t == "benefit") {
                    $('.type-label').html("Benefit Value :");

                }
                else if (t == "discount") {
                    $('.type-label').html("Discount Percentage  :");

                }

                $('.type').show();

            });


            //jQuery for datepicker
            $('.dp1').datepicker({
                format: 'dd/mm/yyyy'
            });
        });

        $('.reservation').daterangepicker();
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $('.campaigns')._addClass('active');
           $('.newCampaign')._addClass('active');

       });
    </script>
</asp:Content>

