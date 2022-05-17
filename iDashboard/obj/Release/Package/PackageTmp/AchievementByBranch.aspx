<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AchievementByBranch.aspx.cs" Inherits="iDashboard.AchievementByBranch" %>

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
                                    <div id="chartContainer" style="height: 300px; width: 100%;"></div>
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
            <script src="js/canvasjs.min.js"></script>
            <script>
                window.onload = function () {

                    var chart = new CanvasJS.Chart("chartContainer", {
                        animationEnabled: true,
                        title: {
                            text: "Achievement by Branch"
                        },
                        axisX: {
                            xValueFormatString: "string",
                        },
                        axisY: {
                            //prefix: "$"
                        },
                        toolTip: {
                            shared: true
                        },
                        legend: {
                            cursor: "pointer",
                            itemclick: toggleDataSeries
                        },
                        data: [{
                            type: "stackedBar",
                            name: "Week 1",
                            showInLegend: "true",
                            xValueFormatString: "string",
                            yValueFormatString: "#,##0",
                            dataPoints: [
                                { label : "BALIKPAPAN", y: 56 },
                                { label : "BANDUNG", y: 45 },
                                { label : "BANJARMASIN", y: 71 },
                                { label : "JAKARTA1", y: 41 },
                                { label : "JAKARTA2", y: 60 },
                                { label : "JAKARTA FACT", y: 75 },
                                { label : "JAKARTA SCF", y: 98 }

                            ]
                        },
                        {
                            type: "stackedBar",
                            name: "Week 2",
                            showInLegend: "true",
                            xValueFormatString: "string",
                            yValueFormatString: "#,##0",
                            dataPoints: [
                                { label: "BALIKPAPAN", y: 56 },
                                { label: "BANDUNG", y: 45 },
                                { label: "BANJARMASIN", y: 71 },
                                { label: "JAKARTA1", y: 41 },
                                { label: "JAKARTA2", y: 60 },
                                { label: "JAKARTA FACT", y: 75 },
                                { label: "JAKARTA SCF", y: 98 }
                            ]
                        },
                        {
                            type: "stackedBar",
                            name: "Week 3",
                            showInLegend: "true",
                            xValueFormatString: "string",
                            yValueFormatString: "#,##0",
                            dataPoints: [
                                { label: "BALIKPAPAN", y: 56 },
                                { label: "BANDUNG", y: 45 },
                                { label: "BANJARMASIN", y: 71 },
                                { label: "JAKARTA1", y: 41 },
                                { label: "JAKARTA2", y: 60 },
                                { label: "JAKARTA FACT", y: 75 },
                                { label: "JAKARTA SCF", y: 98 }
                            ]
                        },
                        {
                            type: "stackedBar",
                            name: "Week 4",
                            showInLegend: "true",
                            xValueFormatString: "string",
                            yValueFormatString: "#,##0",
                            dataPoints: [
                                { label: "BALIKPAPAN", y: 56 },
                                { label: "BANDUNG", y: 45 },
                                { label: "BANJARMASIN", y: 71 },
                                { label: "JAKARTA1", y: 41 },
                                { label: "JAKARTA2", y: 60 },
                                { label: "JAKARTA FACT", y: 75 },
                                { label: "JAKARTA SCF", y: 98 }
                            ]
                        }]
                    });
                    chart.render();

                    function toggleDataSeries(e) {
                        if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                            e.dataSeries.visible = false;
                        }
                        else {
                            e.dataSeries.visible = true;
                        }
                        chart.render();
                    }

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

            </script>
        <%--</div>
    </div>--%>
</body>
</html>
