<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Principal.aspx.vb" Inherits="Encrypt.Principal" %>

<!DOCTYPE html>

	<html lang="en">

	<!-- begin::Head -->
	<head>
		<base href="../../../">
		<meta charset="utf-8" />
		<title>Encrypt | UMG </title>
		<meta name="description" content="Login page">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!--begin::Fonts -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Roboto:300,400,500,600,700">

		<!--end::Fonts -->

		<!--begin::Page Custom Styles(used by this page) -->
		<link href="assets/css/pages/login/login-5.css" rel="stylesheet" type="text/css" />

		<!--end::Page Custom Styles -->

		<!--begin::Global Theme Styles(used by all pages) -->

		<!--begin:: Vendor Plugins -->
        <link href="../../assets/plugins/datatables/datatables.css" rel="stylesheet" />
        <link href="../../assets/plugins/datatables/datatables.min.css" rel="stylesheet" />
		<link href="assets/plugins/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/quill/dist/quill.snow.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/dual-listbox/dist/dual-listbox.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/plugins/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/plugins/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/plugins/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/general/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

		<!--end:: Vendor Plugins -->
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--begin:: Vendor Plugins for custom pages -->
		<link href="assets/plugins/custom/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/@fullcalendar/core/main.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/@fullcalendar/daygrid/main.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/@fullcalendar/list/main.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/@fullcalendar/timegrid/main.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/jstree/dist/themes/default/style.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/jqvmap/dist/jqvmap.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/uppy/dist/uppy.min.css" rel="stylesheet" type="text/css" />

		<!--end:: Vendor Plugins for custom pages -->

		<!--end::Global Theme Styles -->

		<!--begin::Layout Skins(used by all pages) -->
		<link href="assets/css/skins/header/base/light.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/skins/brand/dark.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/skins/aside/dark.css" rel="stylesheet" type="text/css" />

		<!--end::Layout Skins -->
		<link rel="shortcut icon" href="assets/media/logo.png" />
	</head>
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed">
    <div class="kt-grid kt-grid--hor kt-grid--root">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
            <div class="kt-aside  kt-aside--fixed  kt-grid__item kt-grid kt-grid--desktop kt-grid--hor-desktop">
                <div class="kt-aside__brand kt-grid__item ">
                    <div class="kt-aside__brand-logo">
                        <div class="kt-aside__brand-logo">
                            <a>
                               <span style="color:white;">Bienvenido a Encrypt Web</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper">
                <div class="kt-header kt-grid__item  kt-header--fixed ">
                    <div class="kt-header-menu-wrapper">
                    </div>
                    <div class="kt-header__topbar">
                        <div class="kt-header__topbar-item kt-header__topbar-item--user" style="float: right;">
                            <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px,0px" aria-expanded="false">
                                <div class="kt-header__topbar-user" >
                                     <button  class="btn btn-danger btn-sm" onclick="Out();">Sing Out</button>&nbsp;&nbsp;
                                </div>
                                <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-xl show" style="position: absolute; transform: translate3d(1260px, 64px, 0px); top: 0px; left: 0px; will-change: transform; visibility:hidden;">
                                    <div class="kt-user-card kt-user-card--skin-dark kt-notification-item-padding-x" style="background-image: url(assets/media/misc/bg-1.jpg)">
                                    </div>
                                    <div class="kt-notification">
                                        <div class="kt-notification__custom kt-space-between">
                                            <a ></a>
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                


                
            <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
                  <div class="kt-grid kt-grid--desktop kt-grid--ver kt-grid--ver-desktop kt-app">
                      <div class="kt-grid__item kt-app__toggle kt-app__aside">
                          <div class="kt-portlet kt-portlet--height-fluid-" Style="height:300px">
                              <div class="kt-portlet__head  kt-portlet__head--noborder">
                                  <div class="kt-portlet__head-label">
                                      <h3 class="kt-portlet__head-title">
                                          Mi Perfil
                                      </h3>
                                  </div>
                                  <div class="kt-portlet__head-toolbar">
                                      <a></a>
                                  </div>
                                  <div class="kt-widget kt-widget--user-profile-1">
                                      <div class="kt-widget__head">
                                          <div class="kt-widget__media">
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="kt-portlet__body kt-portlet__body--fit-y">
                                  <div class="kt-widget kt-widget--user-profile-1">
                                      <div class="kt-widget__head">
                                          <div class="kt-widget__media">
                                              <img  src="assets/media/iconperson.png" style="width:40px; height:40px;"/>
                                          </div>
                                      </div>
                                  </div>
                             <div class="kt-widget__body">
                                  <div class="kt-widget__content">
                                      <div class="kt-widget__info">
                                          <label class="kt-widget__label">Nombre:</label>
                                          <input id="idnombre" type="text"  class="form-control" disabled="disabled" />
                                      </div>
                                      <div class="kt-widget__info">
                                             <label class="kt-widget__label">Correo:</label>
                                          <input id="idcorreo" type="text" class="form-control" disabled="disabled" />
                                      </div>
                                     </div>
                                 </div>
                              </div>
                          </div>
                                  <div class="kt-portlet kt-portlet--height-fluid-" Style="height:400px">
                              <div class="kt-portlet__head  kt-portlet__head--noborder">
                                  <div class="kt-portlet__head-label">
                                      <h3 class="kt-portlet__head-title">
                                         Datos a Encriptar
                                      </h3>
                                  </div>
                                  <div class="kt-portlet__head-toolbar">
                                      <a></a>
                                  </div>
                                  <div class="kt-widget kt-widget--user-profile-1">
                                      <div class="kt-widget__head">
                                          <div class="kt-widget__media">
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="kt-portlet__body kt-portlet__body--fit-y">
                                  <div class="kt-widget kt-widget--user-profile-1">
                                      <div class="kt-widget__head">
                                          <div class="kt-widget__media">
                                              <img  src="assets/media/logo.png" style="width:70px; height:70px;"/>
                                          </div>
                                      </div>
                                  </div>
                             <div class="kt-widget__body">
                                  <div class="kt-widget__content">
                                      <div class="kt-widget__info">
                                          <label class="kt-widget__label">Encriptar dato:</label>
                                          <input id="encriptado" type="text" class="form-control" />

                                      </div>
                                     </div>
                                
                                 </div>
                                    <button id="kt_login_signup_submit" class="btn btn-success btn-sm" onclick="Guardar();">Encriptar</button>&nbsp;&nbsp;

                                     <div class="kt-widget__content">
                                      <div class="kt-widget__info">
                                          <label class="kt-widget__label">Desencriptar dato:</label>
                                          <input id="Desencriptado" type="text" class="form-control" />
                                      </div>
                                     </div>
                                  <button  class="btn btn-success btn-sm" onclick="GuardarEncrypt();">Desencriptar</button>&nbsp;&nbsp;
                              </div>
                                   
                          </div>
                      </div>
                         <div class="kt-grid__item kt-grid__item--fluid kt-app__content">
                              <div class="row">
                                  <div class="col-xl-12">
                                      <div class="kt-portlet">
                                          <div class="kt-portlet__head">
                                              <div class="kt-portlet__head-label">
                                                  <h3 class="kt-portlet__head-title">
                                                      Encriptado 
                                                  </h3>
                                              </div>
                                          </div>  
                                      </div>
                                  </div>
                              </div>
                        <div class="kt-form kt-form--label-right">
                          <div class="kt-portlet__body">
                              <div class="kt-datatable kt-datatable--default kt-datatable--brand kt-datatable--error kt-datatable--loaded">
                                   <div class="modal-body">
                                    <div class="container-fluid">
                                         <table class="table table-striped table-bordered table-hover table-checkable order-column" id="table_encrypt">
                                           <thead >
				                                 <tr>
                                                  <th>Cod</th>
					                              <th>Item</th>
				                                  </tr>
			                                      </thead>
                                             </table>
                                     </div>
                                </div>
                              </div>
                          </div>
                      </div>
                               <div class="row">
                                  <div class="col-xl-12">
                                      <div class="kt-portlet">
                                          <div class="kt-portlet__head">
                                              <div class="kt-portlet__head-label">
                                                  <h3 class="kt-portlet__head-title">
                                                      Desencriptado 
                                                  </h3>
                                              </div>
                                          </div>  
                                      </div>
                                  </div>
                              </div>
                        <div class="kt-form kt-form--label-right">
                          <div class="kt-portlet__body">
                              <div class="kt-datatable kt-datatable--default kt-datatable--brand kt-datatable--error kt-datatable--loaded">
                                   <div class="modal-body">
                                    <div class="container-fluid">
                                         <table class="table table-striped table-bordered table-hover table-checkable order-column" id="tbl_DsEncrypt">
                                           <thead >
				                                 <tr>
                                                  <th>Cod</th>
					                              <th>Item</th>
				                                  </tr>
			                                      </thead>
                                             </table>
                                     </div>
                                </div>
                              </div>
                          </div>
                      </div>
                     </div>
                  </div>
              </div>
           </div>




        </div>
    </div>
    <!-- Buttons-->
    <form runat="server">
         <asp:TextBox runat="server" ID="TxtCodigo" Style="display: none;" ClientIDMode="Static"></asp:TextBox>
    </form>
       
    <!--begin:: Vendor Plugins -->
        <script src="../../Scripts/jquery.min.js"></script>
		<script src="assets/plugins/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
		<script src="assets/plugins/general/moment/min/moment.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
		<script src="assets/plugins/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/wnumb/wNumb.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/bootstrap-datepicker.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/bootstrap-timepicker.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
		<script src="assets/plugins/general/plugins/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/bootstrap-switch.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
		<script src="assets/plugins/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
		<script src="assets/plugins/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
		<script src="assets/plugins/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
		<script src="assets/plugins/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
		<script src="assets/plugins/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
		<script src="assets/plugins/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
		<script src="assets/plugins/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
		<script src="assets/plugins/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
		<script src="assets/plugins/general/autosize/dist/autosize.js" type="text/javascript"></script>
		<script src="assets/plugins/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/dropzone.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/quill/dist/quill.js" type="text/javascript"></script>
		<script src="assets/plugins/general/@yaireo/tagify/dist/tagify.polyfills.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/@yaireo/tagify/dist/tagify.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/summernote/dist/summernote.js" type="text/javascript"></script>
		<script src="assets/plugins/general/markdown/lib/markdown.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/bootstrap-markdown.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/bootstrap-notify.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/jquery-validation.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/dual-listbox/dist/dual-listbox.js" type="text/javascript"></script>
		<script src="assets/plugins/general/raphael/raphael.js" type="text/javascript"></script>
		<script src="assets/plugins/general/morris.js/morris.js" type="text/javascript"></script>
		<script src="assets/plugins/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
		<script src="assets/plugins/general/plugins/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/plugins/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
		<script src="assets/plugins/general/counterup/jquery.counterup.js" type="text/javascript"></script>
		<script src="assets/plugins/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="assets/plugins/general/js/global/integration/plugins/sweetalert2.init.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
		<script src="assets/plugins/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
		<script src="assets/plugins/general/dompurify/dist/purify.js" type="text/javascript"></script>

		<!--end:: Vendor Plugins -->
		<script src="assets/js/scripts.bundle.js" type="text/javascript"></script>
		<!--begin:: Vendor Plugins for custom pages -->
		<script src="assets/plugins/custom/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/core/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/daygrid/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/google-calendar/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/interaction/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/list/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/@fullcalendar/timegrid/main.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/gmaps/gmaps.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/dist/es5/jquery.flot.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.resize.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.categories.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.pie.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.stack.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.crosshair.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/flot/source/jquery.flot.axislabels.js" type="text/javascript"></script>

		<script src="assets/plugins/custom/jszip/dist/jszip.min.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/pdfmake/build/pdfmake.min.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/pdfmake/build/vfs_fonts.js" type="text/javascript"></script>

		<script src="assets/plugins/custom/jstree/dist/jstree.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/jquery.vmap.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/maps/jquery.vmap.world.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/maps/jquery.vmap.russia.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/maps/jquery.vmap.usa.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/maps/jquery.vmap.germany.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/jqvmap/dist/maps/jquery.vmap.europe.js" type="text/javascript"></script>
		<script src="assets/plugins/custom/uppy/dist/uppy.min.js" type="text/javascript"></script>
        <script src="../assets/js/pages/custom/login/login-general.js"></script>
        <script src="../../assets/plugins/datatables/datatables.min.js"></script>
        <script src="../../assets/plugins/datatables/datatables.all.min.js"></script>

    	<script>
			var KTAppOptions = {
				"colors": {
					"state": {
						"brand": "#5d78ff",
						"dark": "#282a3c",
						"light": "#ffffff",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995"
					},
					"base": {
						"label": [
							"#c5cbe3",
							"#a1a8c3",
							"#3d4465",
							"#3e4466"
						],
						"shape": [
							"#f0f3ff",
							"#d9dffa",
							"#afb4d4",
							"#646c9a"
						]
					}
				}
			};
		</script>

     <script type="text/javascript">

            $(document).ready(function () {

                var SendData = {
                    "codigo": $('#TxtCodigo').val()


                };
                $.ajax({
                    type: "Post",
                    url: "/App/WS/Menu.asmx/Usuario",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(SendData),
                    dataType: "json",
                    success: function (result) {
                        var nombre = result.d[0].User;
                        var correo = result.d[0].Email;
                        $('#idnombre').val(nombre);
                        $('#idcorreo').val(correo);
                    },
                    error: function (result) {

                    }
                });
                
                DibujarTabla();
                DibujarTablaEncrypt();
            });

            function Out() {
                window.location.href = "/App/Pages/Login.aspx";
            }

            function Guardar() {

                var encriptar = document.getElementById("encriptado").value;

                if (encriptar != "" ) {
                    var SendData = {
                        "encriptar": encriptar,
                        "codigo": $('#TxtCodigo').val()


                    };
                    $.ajax({
                        type: "Post",
                        url: "/App/WS/Menu.asmx/Encriptado",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(SendData),
                        dataType: "json",
                        success: function (result) {
                            window.location.href = "/App/Pages/Principal.aspx?cod=" + $('#TxtCodigo').val();
                        },
                        error: function (result) {

                        }
                    });
                } else {
                    return toastr.warning("Campos  vacios en encriptar")
                }
     
            }

            function GuardarEncrypt() {

                var Desencriptado = document.getElementById("Desencriptado").value;

                if (Desencriptado != "") {
                    var SendData = {
                        "encriptar": Desencriptado,
                        "codigo": $('#TxtCodigo').val()


                    };
                    $.ajax({
                        type: "Post",
                        url: "/App/WS/Menu.asmx/Desencriptado",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(SendData),
                        dataType: "json",
                        success: function (result) {
                            window.location.href = "/App/Pages/Principal.aspx?cod=" + $('#TxtCodigo').val();
                        },
                        error: function (result) {

                        }
                    });
                } else {
                    return toastr.warning("Campos  vacios en desencriptar")
                }

            }

        
            function DibujarTabla() {



                var sentAjaxData = {
                    "codigo": $('#TxtCodigo').val()


                };

                $.ajax({
                    type: 'POST',
                    data: JSON.stringify(sentAjaxData),
                    contentType: "application/json; charset=utf-8",
                    url: "/App/WS/Menu.asmx/GetEncriptado",
                    datatype: 'json',
                    success: function (data) {
                        $('#table_encrypt').DataTable().destroy();
                        $('#table_encrypt').empty();
                        var cantidad = data.d.length
                        $('#table_encrypt').DataTable({
                            data: data.d,
                            columns: [

                                {
                                    "title": "#",
                                    "data": "IdCodigo",
                                    "className": "dt-center",
                                    "width": "20%",

                                },

                                 {
                                     "title": "Datos",
                                     "data": "Dato",
                                     "width": "60%",
                                     "className": "dt-center",
                                 },

                                 {
                                     "title": "Encriptados",
                                     "data": "DatoEncriptado",
                                     "className": "dt-center",

                                 }
                            ],
                            bStateSave: false,
                            "searching": false,
                            columnDefs: [{
                                targets: 1,
                                orderable: true,
                                searchable: false,
                                width: "10%"
                            }],
                            lengthMenu: [
                                [3, -1],
                                [3]
                            ],
                            pageLength: 3,
                            pagingType: "bootstrap_full_number",
                            order: [[1, "asc"]]
                        });
                    },
                    error: function (result) {
                        alert(result);
                    }
                });

            }
            function DibujarTablaEncrypt() {



                var sentAjaxData = {
                    "codigo": $('#TxtCodigo').val()


                };

                $.ajax({
                    type: 'POST',
                    data: JSON.stringify(sentAjaxData),
                    contentType: "application/json; charset=utf-8",
                    url: "/App/WS/Menu.asmx/GetDesencriptado",
                    datatype: 'json',
                    success: function (data) {
                        $('#tbl_DsEncrypt').DataTable().destroy();
                        $('#tbl_DsEncrypt').empty();
                        var cantidad = data.d.length
                        $('#tbl_DsEncrypt').DataTable({
                            data: data.d,
                            columns: [

                                   {
                                       "title": "#",
                                       "data": "IdCodigo",
                                       "className": "dt-center",
                                       "width": "20%",

                                   },

                                 {
                                     "title": "Encriptado",
                                     "data": "DatoEncriptado",
                                     "width": "60%",
                                     "className": "dt-center",
                                 },

                                 {
                                     "title": "Desencriptado",
                                     "data": "Dato",
                                     "className": "dt-center",

                                 }
                            ],
                            bStateSave: false,
                            "searching": false,
                            columnDefs: [{
                                targets: 1,
                                orderable: true,
                                searchable: false,
                                width: "10%"
                            }],
                            lengthMenu: [
                                [3, -1],
                                [3]
                            ],
                            pageLength: 3,
                            pagingType: "bootstrap_full_number",
                            order: [[1, "asc"]]
                        });
                    },
                    error: function (result) {
                        alert(result);
                    }
                });

            }

</script>


</body>
</html>
