<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CashInSummary.aspx.cs" Inherits="iDashboard.CashInSummary" %>

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
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>Summary Disbursement by Branch - Conven</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="MeSeStatusCanvasCon" width="70" height="13"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>Summary Disbursement by Branch - Non Conven</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="MeSeStatusCanvasNonCon" width="70" height="13"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <%--<br>
                    <br>--%>
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
    <!-- Data Tables -->
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
    <%--canvasjs--%>
    <script src="js/canvasjs.min.js"></script>
    <script>

        jQuery(function ($) {

            LoadAllEventPP();
        });

        function LoadAllEventPP() {
            ActivityLoadPP();
        }
        //number to thousands

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

        var getMonth = function (idx) {

            var objDate = new Date();
            objDate.setDate(1);
            objDate.setMonth(idx - 1);

            var locale = "en-us",
                month = objDate.toLocaleString(locale, { month: "long" });

            return month;
        }

        var dateObj = new Date();
        var month = dateObj.getUTCMonth() + 1; //months from 1-12
        var monthName = getMonth(month);
        var year = dateObj.getUTCFullYear();

        //newdate = monthName + "-" + year;

        $("#bulanTahun").html(monthName +' '+ year);

        //console.log("afjas",newdate)

        function ActivityLoadPP() {

            jQuery.ajax({
                type: "POST",
                url: 'CashInSummary.aspx/ActivityLoad1',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    SummaryConven(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });

            jQuery.ajax({
                type: "POST",
                url: 'CashInSummary.aspx/ActivityLoad2',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    SummaryNonConven(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }


        function SummaryConven(r) {
            var cab = [];
            var amt = [];

            for (var i = 0; i < r.length; i++) {
                amt.push(parseFloat(r[i].Amount));
            }

            for (var i = 0; i < r.length; i++) {
                cab.push(r[i].Cabang);
            }

            var MeSeContext = document.getElementById("MeSeStatusCanvasCon").getContext("2d");
            var MeSeData = {
                labels: cab,
                datasets: [{
                    label: "Total Disbursement",
                    backgroundColor: ["#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966"],
                    hoverBackgroundColor: ["#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba"],
                    data: amt
                }]
            };

            var MeSeChart = new Chart(MeSeContext, {
                type: 'horizontalBar',
                data: MeSeData,
                options: {
                    scales: {
                        xAxes: [{
                            ticks: {
                                min: 60
                            }
                        }],
                        yAxes: [{
                            stacked: true
                        }]
                    }
                }
            });
        }



        function SummaryNonConven(r) {

            var cab = [];
            var amt = [];

            for (var i = 0; i < r.length; i++) {
                amt.push(parseFloat(r[i].Amount));
            }

            for (var i = 0; i < r.length; i++) {
                cab.push(r[i].Cabang);
            }

            var MeSeContext = document.getElementById("MeSeStatusCanvasNonCon").getContext("2d");
            var MeSeData = {
                labels: cab,
                datasets: [{
                    label: "Total Disbursement",
                    backgroundColor: ["#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966"],
                    hoverBackgroundColor: ["#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba"],
                    data: amt
                }]
            };

            var MeSeChart = new Chart(MeSeContext, {
                type: 'horizontalBar',
                data: MeSeData,
                options: {
                    scales: {
                        xAxes: [{
                            ticks: {
                                min: 60
                            }
                        }],
                        yAxes: [{
                            stacked: true
                        }]
                    }
                }
            });
        }

    </script>
</body>
</html>
