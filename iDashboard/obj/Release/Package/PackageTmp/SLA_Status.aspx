<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SLA_Status.aspx.cs" Inherits="iDashboard.SLA_Status" %>

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
    <link href="../iDashboard/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../iDashboard/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
                    <div class="clearfix"></div>
                    <!-- menu profile quick info -->
                    <!-- /menu profile quick info -->
                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>SLA by Week</h3>

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
                        <div class="fa-hover col-md-12 col col-sm-12 col-xs-12">
                            <div class="pull-right">
                            <i class="fa fa-bullseye"></i> 
                            <small><strong>Amount in Million</strong></small>
                            </div>
                        </div>


                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>SLA by Status</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li>
                                            
                                            <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li>
                                                    <a href="#">Settings 1</a>
                                                </li>
                                                <li>
                                                    <a href="#">Settings 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            <div class="x_content">
                                    <div class="table-responsive" id="divTblPipBud">
                                        <table class="table table-striped jambo_table bulk_action" id="tblPipBud">
                                            <thead>
                                                <tr class="headings">
                                                    <th class="column-title">Branch </th>
                                                    <th class="column-title">BRH MGR</th>
                                                    <th class="column-title">CA</th>
                                                    <th class="column-title">HOLDING</th>
                                                    <th class="column-title">AM</th>
                                                    <th class="column-title">MEETING KOMITE</th>
                                                    <th class="column-title">PREPARE CETAK KONTRAK</th>
                                                    <th class="column-title">SIGNING</th>
                                                    <th class="column-title">PREPARE PO</th>
                                                    <th class="column-title">TAGIHAN</th>
                                                    <th class="column-title">CREDAM</th>
                                                    <th class="column-title">FINANCE</th>
                                                    <th class="column-title">DONE</th>
                                                    <%--<th class="bulk-actions" colspan="6">
                                                        <a class="antoo" style="color: #fff; font-weight: 500;">Bulk Actions ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                                    </th>--%>
                                                </tr>
                                            </thead>
                                            <tbody id="bodyTblPipBud">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                </div>
                <br>
                <br>
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
            <script src="../iDashboard/vendors/jquery/dist/jquery.min.js"></script>
            <!-- Bootstrap -->
            <script src="../iDashboard/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
            <!-- FastClick -->
            <script src="../iDashboard/vendors/fastclick/lib/fastclick.js"></script>
            <!-- NProgress -->
            <script src="../iDashboard/vendors/nprogress/nprogress.js"></script>
            <!-- Chart.js -->
            <script src="../iDashboard/vendors/Chart.js/dist/Chart.min.js"></script>
            <!-- jQuery Sparklines -->
            <script src="../iDashboard/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
            <!-- Flot -->
            <script src="../iDashboard/vendors/Flot/jquery.flot.js"></script>
            <script src="../iDashboard/vendors/Flot/jquery.flot.pie.js"></script>
            <script src="../iDashboard/vendors/Flot/jquery.flot.time.js"></script>
            <script src="../iDashboard/vendors/Flot/jquery.flot.stack.js"></script>
            <script src="../iDashboard/vendors/Flot/jquery.flot.resize.js"></script>
            <!-- Flot plugins -->
            <script src="js/flot/jquery.flot.orderBars.js"></script>
            <script src="js/flot/date.js"></script>
            <script src="js/flot/jquery.flot.spline.js"></script>
            <script src="js/flot/curvedLines.js"></script>
            <!-- bootstrap-daterangepicker -->
            <script src="js/moment/moment.min.js"></script>
            <script src="js/datepicker/daterangepicker.js"></script>
            <!-- NProgress -->
            <script src="../iDashboard/vendors/nprogress/nprogress.js"></script>
            <!-- bootstrap-progressbar -->
            <script src="../iDashboard/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
            <!-- Custom Theme Scripts -->
            <script src="js/custom.js"></script>
            <script src="js/currency.min.js"></script>
            <!-- Data Tables -->
            <script type="text/javascript" src="DataTables/datatables.min.js"></script>
            <script>

                jQuery(function ($) {
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': false,
                        'paging': true,
                        'bInfo' : false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });

                    LoadAllEvent();
                    //setInterval(LoadAllEvent, 300000);
                });
                function LoadAllEvent() {
                    ActivityLoad();
                }
                //number to thousands

                function thousands_separators(num) {
                    var num_parts = num.toString().split(".");
                    num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    return num_parts.join(".");
                }

                //get current week of current month
                function getWeekOfMonth(date) {
                    var day = date.getDate()
                    day -= (date.getDay() == 0 ? 6 : date.getDay() - 1);//get monday of this week
                    //special case handling for 0 (sunday)

                    day += 7;
                    //for the first non full week the value was negative

                    prefixes = ['0', '1', '2', '3', '4', '5'];
                    return prefixes[0 | (day) / 7];
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

                function ActivityLoad() {

                    jQuery.ajax({
                        type: "POST",
                        url: 'SLA_Status.aspx/ActivityLoad',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (rsp) {
                            OnSuccess(rsp.d)
                        },
                        failure: function (r) {
                            alert(r);
                        },
                        error: function (response) {
                            alert(r);
                        }
                    });
                }

                function detailSummary(type, branch, value) {
                    console.log("tessss", type, branch, value)
                    window.location.href = "DetailApplicationBranch.aspx?type=" + type + "&brn=" + branch + "&val=" + value;
                    //console.log("ekaajax")
                    return;
                }

                function OnSuccess(r) {

                    var pip = [];
                    var bud = [];
                    var tot = [];

                    //var text = '<table class="table table-striped jambo_table bulk_action" id="tblWK"> <thead> <tr class="headings"> <th class="column-title">PRODUCT </th> <th class="column-title">WEEK 1 </th> <th class="column-title">WEEK 2 </th> <th class="column-title">WEEK 3 </th> <th class="column-title">WEEK 4 </th> <th class="column-title">WEEK 5 </th> <th class="column-title">GRAND TOTAL </th> <th class="bulk-actions" colspan="6"> <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a> </th> </tr> </thead> <tbody id="bodyTblWK">';
                    var text = '<table class="table table-striped jambo_table bulk_action" id="tblPipBud"><thead><tr class="headings"><th class="column-title" style="text-align:center">Branch </th><th class="column-title" style="text-align:right">BRH MGR</th><th class="column-title" style="text-align:right">CA</th><th class="column-title style="text-align:right"">HOLDING</th><th class="column-title" style="text-align:right">AM</th><th class="column-title" style="text-align:center">MEETING KOMITE</th><th class="column-title" style="text-align:center">PREPARE CETAK KONTRAK</th><th class="column-title style="text-align:right"">SIGNING</th><th class="column-title" style="text-align:center">PREPARE PO</th><th class="column-title" style="text-align:right">TAGIHAN</th><th class="column-title" style="text-align:right">CREDAM</th><th class="column-title" style="text-align:right">FINANCE</th><th class="column-title" style="text-align:right">DONE</th></tr></thead><tbody id="bodyTblPipBud">';
                    var row = '';

                    for (var i = 0; i < r.length; i++) {
                        if (r[i].Keterangan === 'Pipeline') {
                            //fac.push(r[i].GroupDesc);
                            pip.push(parseFloat(r[i].HETO));
                            pip.push(parseFloat(r[i].MEDICAL));
                            pip.push(parseFloat(r[i].SCF));
                            pip.push(parseFloat(r[i].FACTORING));
                            pip.push(parseFloat(r[i].GrandTotal));
                            //fac.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].Keterangan === 'Budget') {
                            //het.push(r[i].GroupDesc);
                            bud.push(parseFloat(r[i].HETO));
                            bud.push(parseFloat(r[i].MEDICAL));
                            bud.push(parseFloat(r[i].SCF));
                            bud.push(parseFloat(r[i].FACTORING));
                            bud.push(parseFloat(r[i].GrandTotal));
                            //het.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].Keterangan === 'Total %') {
                            //med.push(r[i].GroupDesc);
                            tot.push(parseFloat(r[i].HETO));
                            tot.push(parseFloat(r[i].MEDICAL));
                            tot.push(parseFloat(r[i].SCF));
                            tot.push(parseFloat(r[i].FACTORING));
                            tot.push(parseFloat(r[i].GrandTotal));
                            //med.push(parseFloat(r[i].GrandTotal));
                        }

                        var type = 'STATUS_CONVEN';
                        var brh = 'BRH MGR';
                        var ca = 'CA';
                        var hol = 'HOLDING';
                        var am = 'AM';
                        var mee = 'MEETING KOMITE';
                        var pre = 'PREPARE CETAK KONTRAK'
                        var sign = 'SIGNING';
                        var prpo = 'PREPARE PO';
                        var tag = 'TAGIHAN';
                        var cre = 'CREDAM';
                        var fin = 'FINANCE';
                        var don = 'DONE';

                        var date = new Date();
                        var week = getWeekOfMonth(date);

                        console.log("eee", r[i].Credam)
                        row += '<tr class="even pointer"><td class="text-left" style="font-weight:bold">' + r[i].Branch + ' </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + brh + '\')">' + thousands_separators(r[i].Brhmgr) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + ca + '\')">' + thousands_separators(r[i].CA) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + hol + '\')">' + thousands_separators(r[i].Holding) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + am + '\')">' + thousands_separators(r[i].AM) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + mee + '\')">' + thousands_separators(r[i].MeetingKomite) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + pre + '\')">' + thousands_separators(r[i].PrepareCetakKontrak) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + sign + '\')">' + thousands_separators(r[i].Signing) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + prpo + '\')">' + thousands_separators(r[i].PreparePO) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + tag + '\')">' + thousands_separators(r[i].Tagihan) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + cre + '\')">' + thousands_separators(r[i].Credam) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + fin + '\')">' + thousands_separators(r[i].Finance) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + don + '\')">' + thousands_separators(r[i].Done) + '</a> </td></tr>';

                    }

                    text += row;
                    text += '</tbody> </table>';

                    $('#divTblPipBud').html(text);
                    $('#tblPipBud').DataTable({
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
        <%--</div>
    </div>--%>
</body>
</html>
