<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HallofFame.aspx.cs" Inherits="iDashboard.HallofFame" %>

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

                            <div class="col-md-4 col-sm-12 col-xs-12 col-lg-offset-1">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>TOP 5 SALES ABF</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="top5_abf">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-12 col-xs-12 col-lg-offset-1">

                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>TOP 5 SALES NON-ABF</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="top5_non_abf">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="col-md-12 col-sm-12 col-xs-12">

                            <div class="col-md-4 col-sm-12 col-xs-12 col-lg-offset-1">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>TOP 5 SALES FACTORING</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="top5_factoring">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-12 col-xs-12 col-lg-offset-1">

                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>TOP 5 SALES HAJI</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="top5_haji">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<br>--%>
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

        $(document).ready(function () {
            LoadDtMarketing();
            LoadDtMarketingNABF();
            LoadDtMarketingFAC();
            LoadDtMarketingHAJ();
        });

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

        function detailSummarySW(type, branch, value) {
            window.location.href = "DetailApplicationBranch.aspx?type=" + type + "&brn=" + branch + "&val=" + value;

            return;
        }

        var paramBranchABF = 'ABF';
        var paramBranchNABF = 'NON ABF';
        var paramBranchFAC = 'FACTORING';
        var paramBranchHAJ = 'HAJI';

        function LoadDtMarketing() {

            $.ajax({
                type: "POST",
                url: 'HallOfFame.aspx/LoadDataTopMarketing',
                data: "{paramBranch: '" + paramBranchABF + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d != null) {
                        var headHTML = '<ul class="list-unstyled top_profiles scroll-view">';
                        var bodyHTML = '';
                        var obj = JSON.parse(response.d);
                        //console.log("tes", obj);
                        if (JSON.parse(JSON.stringify(obj.length)) > 0) {
                            for (var i = 0; i < JSON.parse(JSON.stringify(obj.length)) ; i++) {
                                bodyHTML = bodyHTML + '<li class="media event"><img src="images/user.png" width="65" height="65" style="float:left"><div class="media-body"><p>&emsp; ' + obj[i].Marketing + '</p><p id="top1_branch"><strong id="top1_amount">&emsp;  ' + thousands_separators(obj[i].Amount) + ' &nbsp;</strong>|  ' + obj[i].Branch + '</p><p><strong id="top1_contract">&emsp; ' + obj[i].Contract + ' Contract This Month</strong></p></div></li>';
                                //console.log("tes2", obj[i].Marketing);
                            }
                        }

                        var body = headHTML + bodyHTML + '</ul>';
                        $("#top5_abf").html(body);
                    }

                    else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function LoadDtMarketingNABF() {

            $.ajax({
                type: "POST",
                url: 'HallOfFame.aspx/LoadDataTopMarketing',
                data: "{paramBranch: '" + paramBranchNABF + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d != null) {
                        var headHTML = '<ul class="list-unstyled top_profiles scroll-view">';
                        var bodyHTML = '';
                        var obj = JSON.parse(response.d);
                        //console.log("tes", obj);
                        if (JSON.parse(JSON.stringify(obj.length)) > 0) {
                            for (var i = 0; i < JSON.parse(JSON.stringify(obj.length)) ; i++) {
                                bodyHTML = bodyHTML + '<li class="media event"><img src="images/user.png" width="65" height="65" style="float:left"><div class="media-body"><p>&emsp; ' + obj[i].Marketing + '</p><p id="top1_branch"><strong id="top1_amount">&emsp;  ' + thousands_separators(obj[i].Amount) + ' &nbsp;</strong>|  ' + obj[i].Branch + '</p><p><strong id="top1_contract">&emsp; ' + obj[i].Contract + ' Contract This Month</strong></p></div></li>';
                                //console.log("tes2", obj[i].Marketing);
                            }
                        }

                        var body = headHTML + bodyHTML + '</ul>';
                        $("#top5_non_abf").html(body);
                    }

                    else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function LoadDtMarketingFAC() {

            $.ajax({
                type: "POST",
                url: 'HallOfFame.aspx/LoadDataTopMarketing',
                data: "{paramBranch: '" + paramBranchFAC + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d != null) {
                        var headHTML = '<ul class="list-unstyled top_profiles scroll-view">';
                        var bodyHTML = '';
                        var obj = JSON.parse(response.d);
                        //console.log("tes", obj);
                        if (JSON.parse(JSON.stringify(obj.length)) > 0) {
                            for (var i = 0; i < JSON.parse(JSON.stringify(obj.length)) ; i++) {
                                bodyHTML = bodyHTML + '<li class="media event"><img src="images/user.png" width="65" height="65" style="float:left"><div class="media-body"><p>&emsp; ' + obj[i].Marketing + '</p><p id="top1_branch"><strong id="top1_amount">&emsp;  ' + thousands_separators(obj[i].Amount) + ' &nbsp;</strong>|  ' + obj[i].Branch + '</p><p><strong id="top1_contract">&emsp; ' + obj[i].Contract + ' Contract This Month</strong></p></div></li>';
                                //console.log("tes2", obj[i].Marketing);
                            }
                        }

                        var body = headHTML + bodyHTML + '</ul>';
                        $("#top5_factoring").html(body);
                    }

                    else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function LoadDtMarketingHAJ() {

            $.ajax({
                type: "POST",
                url: 'HallOfFame.aspx/LoadDataTopMarketing',
                data: "{paramBranch: '" + paramBranchHAJ + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d != null) {
                        var headHTML = '<ul class="list-unstyled top_profiles scroll-view">';
                        var bodyHTML = '';
                        var obj = JSON.parse(response.d);
                        //console.log("tes", obj);
                        if (JSON.parse(JSON.stringify(obj.length)) > 0) {
                            for (var i = 0; i < JSON.parse(JSON.stringify(obj.length)) ; i++) {
                                bodyHTML = bodyHTML + '<li class="media event"><img src="images/user.png" width="65" height="65" style="float:left"><div class="media-body"><p>&emsp; ' + obj[i].Marketing + '</p><p id="top1_branch"><strong id="top1_amount">&emsp;  ' + thousands_separators(obj[i].Amount) + ' &nbsp;</strong>|  ' + obj[i].Branch + '</p><p><strong id="top1_contract">&emsp; ' + obj[i].Contract + ' Contract This Month</strong></p></div></li>';
                                //console.log("tes2", obj[i].Marketing);
                            }
                        }

                        var body = headHTML + bodyHTML + '</ul>';
                        $("#top5_haji").html(body);
                    }

                    else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

    </script>
</body>
</html>
