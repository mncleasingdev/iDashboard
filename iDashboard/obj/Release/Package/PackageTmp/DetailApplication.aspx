<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailApplication.aspx.cs" Inherits="iDashboard.DetailApplication" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MNC GUI Dashboard </title>
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- jVectorMap -->
    <link href="css/maps/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
    <!-- Custom Theme Style -->
    <link href="css/custom.css" rel="stylesheet">
    <!--Data Table -->
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css" />
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><span>MNC LEASING</span></a>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Detail Application</h3>

                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i>Home <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                    </ul>
                                </li>

                                <li><a><i class="glyphicon glyphicon-list-alt"></i>&emsp;Content <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="WeeklyTarget.aspx">Weekly Target</a></li>
                                        <li><a href="PencairanProduk.aspx">Pencairan Produk</a></li>
                                        <li><a href="SLA_Week.aspx">SLA by Week</a></li>
                                        <li><a href="SLA_Status.aspx">SLA by Status</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Logout">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                    </nav>
                </div>
            </div>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="row">
                        
                        <div class="col-sm-12">
                            
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="x_content">
                                            <h2>Detail Application</h2>
                                            <div class="table-responsive" id="divTblWK">
                                                <table class="table table-striped jambo_table bulk_action" id="tblWK">
                                                    <thead>
                                                        <tr class="headings">
                                                            <th class="column-title" style="text-align:center">APPLICATION NO </th>
                                                            <th class="column-title">CLIENT NAME </th>
                                                            <th class="column-title">BRANCH </th>
                                                            <th class="column-title">NTF </th>
                                                            <th class="column-title">TENOR </th>
                                                            <th class="column-title">STATUS </th>
                                                            <th class="column-title">LAMA PROSES </th>
                                                            <th class="bulk-actions" colspan="7">
                                                            <a class="antoo" style="color: #fff; font-weight: 500;">Bulk Actions ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="bodyTblWK">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                        </div>
                    </div>
                    <footer>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <h5 style="text-align: center">© PT MNC GUNA USAHA INDONESIA</h5>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                </div>
            </div>
            <!-- jQuery -->
            <script src="../vendors/jquery/dist/jquery.min.js"></script>
            <!-- Bootstrap -->
            <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
            <!-- FastClick -->
            <script src="../vendors/fastclick/lib/fastclick.js"></script>
            <!-- NProgress -->
            <script src="../vendors/nprogress/nprogress.js"></script>
            <!-- Chart.js -->
            <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
            <!-- jQuery Sparklines -->
            <script src="../vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
            <!-- Flot -->
            <script src="../vendors/Flot/jquery.flot.js"></script>
            <script src="../vendors/Flot/jquery.flot.pie.js"></script>
            <script src="../vendors/Flot/jquery.flot.time.js"></script>
            <script src="../vendors/Flot/jquery.flot.stack.js"></script>
            <script src="../vendors/Flot/jquery.flot.resize.js"></script>
            <!-- Flot plugins -->
            <script src="js/flot/jquery.flot.orderBars.js"></script>
            <script src="js/flot/date.js"></script>
            <script src="js/flot/jquery.flot.spline.js"></script>
            <script src="js/flot/curvedLines.js"></script>
            <!-- bootstrap-daterangepicker -->
            <script src="js/moment/moment.min.js"></script>
            <script src="js/datepicker/daterangepicker.js"></script>
            <!-- NProgress -->
            <script src="../vendors/nprogress/nprogress.js"></script>
            <!-- bootstrap-progressbar -->
            <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
            <!-- Custom Theme Scripts -->
            <script src="js/custom.js"></script>
            <!-- Data Tables -->
            <script type="text/javascript" src="DataTables/datatables.min.js"></script>
            <script>

                jQuery(function ($) {
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': false,
                        'paging': true,
                        'bInfo': false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });

                    LoadAllEvent();
                    //setInterval(LoadAllEvent, 300000);
                });

                function thousands_separators(num) {
                    var num_parts = num.toString().split(".");
                    num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    return num_parts.join(".");
                }

                function getParameterByName(name, url) {
                    if (!url) url = window.location.href;
                    name = name.replace(/[\[\]]/g, "\\$&");
                    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                        results = regex.exec(url);
                    if (!results) return null;
                    if (!results[2]) return '';
                    return decodeURIComponent(results[2].replace(/\+/g, " "));
                }

                const urlSearchParams = new URLSearchParams(window.location.search);
                const params = Object.fromEntries(urlSearchParams.entries());

                //console.log("ekka1", urlSearchParams, params, params.pro, params.wk)
                var date = new Date();
                var month = date.getMonth()+1;
                var year = date.getFullYear();

                paramType = params.type;
                paramMonth = month;
                paramYear = year;
                paramProduct = params.pro;
                paramWeek = params.wk;

                function LoadAllEvent() {
                    DetailLoad(paramType, paramMonth, paramYear, paramProduct, paramWeek);
                }

                console.log("ekaaaaa", paramType, paramMonth, paramYear, paramProduct, paramWeek)

                function DetailLoad(paramType, paramMonth, paramYear, paramProduct, paramWeek) {
                    $.ajax({
                        type: "POST",
                        url: 'DetailApplication.aspx/DetailLoad',
                        data: '{paramType:"' + paramType + '", paramMonth:"' + paramMonth + '", paramYear:"' + paramYear + '", paramProduct:"' + paramProduct + '",  paramWeek:"' + paramWeek + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            OnSuccess(response.d);

                        },
                        failure: function (response) {
                            alertBox('data failed. error: ' + response.d);
                        }
                    });
                }

                
                function OnSuccess(r) {

                    //var paramType = getParameterByName('paramType') == null ? paramType : getParameterByName('paramType');
                    //var paramProduct = getParameterByName('paramProduct') == null ? paramProduct : getParameterByName('paramProduct');
                    //var paramWeek = getParameterByName('paramWeek') == null ? paramWeek : getParameterByName('paramWeek');

                    var text = '<div class="col-md-9 col-sm-12 col-xs-12"><br><br><table class="table table-striped jambo_table bulk_action" id="tblWK"> <thead> <tr class="headings"> <th class="column-title" style="text-align:center">APPLICATION NO </th> <th class="column-title" style="text-align:left">CLIENT NAME </th> <th class="column-title" style="text-align:left">BRANCH </th> <th class="column-title" style="text-align:center">NTF </th> <th class="column-title" style="text-align:right">TENOR </th> <th class="column-title" style="text-align:left">STATUS </th> <th class="column-title" style="text-align:center">LAMA PROSES </th> <th class="bulk-actions" colspan="7"> <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a> </th> </tr> </thead> <tbody id="bodyTblWK">';
                    var row = '';

                    for (var i = 0; i < r.length; i++) {
                            
                        row += '<tr class="even pointer"><td class="" style="text-align:left">' + r[i].ApplicNo + ' </td><td class="" style="text-align:left">' + r[i].ClientName + ' </td><td class="" style="text-align:left">' + r[i].Branch + '</td><td class="" style="text-align:right">' + thousands_separators(r[i].NTF) + '</td><td class="" style="text-align:right">' + r[i].Tenor + '</td><td class="" style="text-align:left">' + r[i].Status + '</strong></td> <td class="" style="text-align:center">' + r[i].LamaProses + ' HARI'+ '</strong></td></tr>'
                            //row +='<tr class="even pointer"><td class="" style="font-weight:bold">' + r[i].ApplicNo + ' </td><td class="">' + r[i].ClientName +' </td><td class="">' + r[i].Branch + '</td><td class="">' + r[i].NTF + '</td><td class="">' + r[i].Tenor + '</td><td class="">' + r[i].Status + '</strong></td></tr>';
                    }

                    text += row;
                    text += '</tbody> </table>';
                    $('#divTblWK').html(text);
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': false,
                        'paging': true,
                        'bInfo': false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });
                }
            </script>
        
</body>
</html>
