<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeeklyTarget.aspx.cs" Inherits="iDashboard.WeeklyTarget" %>

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
                    <div class="clearfix"></div>
                    <!-- menu profile quick info -->
                    <!-- /menu profile quick info -->
                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Weekly Target Sales</h3>

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
                                        <li><a href="DisplayAll.aspx">Display All</a></li>
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
                        <div class="col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                        <h2>Weekly Target Sales</h2>
                         </div>
                        <div class="col-md-6 col-sm-12 col-xs-12 col-lg-offset-3">
                            <div class="x_content">
                                
                                    <canvas id="mybarChart"></canvas>

                                
                            </div>
                        </div>

                        <div class="fa-hover col-md-12 col col-sm-12 col-xs-12">
                            <div class="pull-right">
                            <i class="fa fa-bullseye"></i> 
                            <small><strong>Amount in Million</strong></small>
                            </div>
                        </div>


                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
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
                                    <div class="table-responsive" id="divTblWK">
                                        <table class="table table-striped jambo_table bulk_action" id="tblWK">
                                            <thead>
                                                <tr class="headings">
                                                    <th class="column-title" style="text-align: center">PRODUCT </th>
                                                    <th class="column-title" style="text-align: center">WEEK 1 </th>
                                                    <th class="column-title" style="text-align: center">WEEK 2 </th>
                                                    <th class="column-title" style="text-align: center">WEEK 3 </th>
                                                    <th class="column-title" style="text-align: center">WEEK 4 </th>
                                                    <th class="column-title" style="text-align: center">WEEK 5 </th>
                                                    <th class="column-title" style="text-align: center">GRAND TOTAL </th>
                                                </tr>
                                            </thead>
                                            <tbody id="bodyTblWK">
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
            <script src="js/currency.min.js"></script>
            <!-- Data Tables -->
            <script type="text/javascript" src="DataTables/datatables.min.js"></script>
            <script>

                jQuery(function ($) {
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': true,
                        'paging': false,
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
                        url: 'WeeklyTarget.aspx/ActivityLoad',
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
                

                function detailSummary(type, product, week) {
                    console.log("tessum", type, product, week)
                    window.location.href = "DetailApplication.aspx?type=" + type + "&pro=" + product + "&wk=" + week;
                    return;
                }

                function OnSuccess(r) {

                    var fac = [];
                    var het = [];
                    var med = [];
                    var scf = [];
                    var haj = [];

                    //var text = '<table class="table table-striped jambo_table bulk_action" id="tblWK"> <thead> <tr class="headings"> <th class="column-title">PRODUCT </th> <th class="column-title">WEEK 1 </th> <th class="column-title">WEEK 2 </th> <th class="column-title">WEEK 3 </th> <th class="column-title">WEEK 4 </th> <th class="column-title">WEEK 5 </th> <th class="column-title">GRAND TOTAL </th> <th class="bulk-actions" colspan="6"> <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a> </th> </tr> </thead> <tbody id="bodyTblWK">';
                    var text = '<table class="table table-striped jambo_table bulk_action" id="tblWK"><thead><tr class="headings"><th class="column-title" style="text-align: left">PRODUCT </th><th class="column-title" style="text-align: right">WEEK 1 </th><th class="column-title" style="text-align: right">WEEK 2 </th><th class="column-title" style="text-align: right">WEEK 3 </th><th class="column-title" style="text-align: right">WEEK 4 </th><th class="column-title" style="text-align: right">WEEK 5 </th><th class="column-title" style="text-align: right">GRAND TOTAL </th></tr></thead><tbody id="bodyTblWK">';
                    var row = '';

                    for (var i = 0; i < r.length; i++) {
                        if (r[i].GroupDesc === 'FACTORING') {
                            //fac.push(r[i].GroupDesc);
                            fac.push(parseFloat(r[i].Week1));
                            fac.push(parseFloat(r[i].Week2));
                            fac.push(parseFloat(r[i].Week3));
                            fac.push(parseFloat(r[i].Week4));
                            fac.push(parseFloat(r[i].Week5));
                            //fac.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].GroupDesc === 'HETO') {
                            //het.push(r[i].GroupDesc);
                            het.push(parseFloat(r[i].Week1));
                            het.push(parseFloat(r[i].Week2));
                            het.push(parseFloat(r[i].Week3));
                            het.push(parseFloat(r[i].Week4));
                            het.push(parseFloat(r[i].Week5));
                            //het.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].GroupDesc === 'MEDICAL') {
                            //med.push(r[i].GroupDesc);
                            med.push(parseFloat(r[i].Week1));
                            med.push(parseFloat(r[i].Week2));
                            med.push(parseFloat(r[i].Week3));
                            med.push(parseFloat(r[i].Week4));
                            med.push(parseFloat(r[i].Week5));
                            //med.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].GroupDesc === 'SCF') {
                            //scf.push(r[i].GroupDesc);
                            scf.push(parseFloat(r[i].Week1));
                            scf.push(parseFloat(r[i].Week2));
                            scf.push(parseFloat(r[i].Week3));
                            scf.push(parseFloat(r[i].Week4));
                            scf.push(parseFloat(r[i].Week5));
                            //scf.push(parseFloat(r[i].GrandTotal));
                        }
                        if (r[i].GroupDesc === 'HAJI') {
                            //haj.push(r[i].GroupDesc);
                            haj.push(parseFloat(r[i].Week1));
                            haj.push(parseFloat(r[i].Week2));
                            haj.push(parseFloat(r[i].Week3));
                            haj.push(parseFloat(r[i].Week4));
                            haj.push(parseFloat(r[i].Week5));
                            //haj.push(parseFloat(r[i].GrandTotal));
                        }

                        var we = 'WEEK';
                        var tot = 'TOTAL';
                        row += '<tr class="even pointer"><td class="text-left" style="font-weight:bold">' + r[i].GroupDesc + ' </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 1)">' + thousands_separators(r[i].Week1) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 2)">' + thousands_separators(r[i].Week2) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 3)">' + thousands_separators(r[i].Week3) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 4)">' + thousands_separators(r[i].Week4) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 5)">' + thousands_separators(r[i].Week5) + '</a> </td><td class="text-right"><strong> <a href="#" onclick="detailSummary(\'' + tot + '\',\'' + r[i].GroupDesc + '\')">' + thousands_separators(r[i].GrandTotal) + '</a></strong></td></tr>'
                        //row += '<tr class="even pointer"> <td class="" style="font-weight:bold">' + r[i].GroupDesc + ' </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 1)">' + r[i].Week1 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 2)">' + r[i].Week2 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 3)">' + r[i].Week3 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 4)">' + r[i].Week4 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 5)">' + r[i].Week5 + '</a> </td> <td class=""><strong>' + r[i].GrandTotal + '</strong></td> </tr>';
                        //console.log("eka",row)
                    }

                    text += row;
                    text += '</tbody> </table>';

                    //console.log('textEka', text);

                    $('#divTblWK').html(text);
                    //$('#tblWK').DataTable({
                    //    "scrollX": true,
                    //    'searching': false,
                    //    'ordering': true,
                    //    'paging': false,
                    //    'bInfo' : false,
                    //    dom: 'Bfrtip',
                    //    buttons: [
                    //        'copy', 'csv', 'excel', 'pdf', 'print'
                    //    ]
                    //});
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': true,
                        'paging': false,
                        'bInfo': false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });
                    

                    console.log("tesss", med)
                    var ctx = document.getElementById("mybarChart");
                    var v = $.each(mybarChart, function () {
                        var customer = $(this);
                        $html$(this).find("a").text();
                    });

                    var mybarChart = new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: ["WEEK 1", "WEEK 2", "WEEK 3", "WEEK 4", "WEEK 5"],
                            datasets: [
                            {
                                label: 'Factoring',
                                backgroundColor: "#559dde",
                                data: fac,
                            },
                            {
                                label: 'HETO',
                                backgroundColor: "#f07a30",
                                data: het,
                            },
                            {
                                label: 'Medical',
                                backgroundColor: "#a6a6a6",
                                data: med,
                            },
                            {
                                label: 'SCF',
                                backgroundColor: "#fac000",
                                data: scf,
                            },
                            {
                                label: 'Haji',
                                backgroundColor: "#1D8348",
                                data: haj,
                            }
                            ]
                        },

                        options: {
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                            }
                        }
                    });

                }
            </script>
        <%--</div>
    </div>--%>
</body>
</html>
