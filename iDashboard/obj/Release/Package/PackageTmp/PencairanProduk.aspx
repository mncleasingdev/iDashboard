<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PencairanProduk.aspx.cs" Inherits="iDashboard.PencairanProduk" %>

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
                            <h3>Pencairan Produk</h3>

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
                <!-- top tiles -->
                <div class="row tile_count" id="topDisbrProd">
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-line-chart"></i>HETO</span>
                        <div class="count" id="topHeto" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-line-chart"></i>HAJI</span>
                        <div class="count" id="topHaji" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa fa-line-chart"></i>MEDICAL</span>
                        <div class="count" id="topMedical" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa fa-line-chart"></i>SCF</span>
                        <div class="count" id="topScf" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa fa-line-chart"></i>FACTORING</span>
                        <div class="count" id="topFactoring" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa fa-line-chart"></i><strong>GRAND TOTAL</strong></span>
                        <div class="count" id="topGrand" style="font-size: 25px"></div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i></i>Total Disbursement</span>
                    </div>
                </div>
                <!-- /top tiles -->
                <div class="">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <%--<h2>Pencairan Produk</h2>--%>

                            <div class="col-md-8 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>PENCAIRAN PRODUK - NON HAJI</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="mybarChartPP" width="70" height="32"></canvas>
                                    </div>
                                </div>
                            </div>

                            <%--top marketing start--%>
                            <div class="col-md-4 col-sm-12 col-xs-12">

                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>TOP 5 MARKETING MNC GUI</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div id="top5_ao">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--top marketing end--%>
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

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="table-responsive" id="divTblPipBud">
                                        <table class="table table-striped jambo_table bulk_action" id="tblPipBud">
                                            <thead>
                                                <tr class="headings">
                                                    <th class="column-title">Keterangan </th>
                                                    <th class="column-title">HETO</th>
                                                    <th class="column-title">MEDICAL</th>
                                                    <th class="column-title">SCF</th>
                                                    <th class="column-title">FACTORING</th>
                                                    <th class="column-title">HAJI</th>
                                                    <th class="column-title">Grand Total</th>
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

        //refresh page
        window.setTimeout(function () {
            window.location.reload();
        }, 360000);

        $(document).ready(function () {
            LoadData();
            LoadDtMarketing();
        });

        function LoadData() {

            $.ajax({
                type: "POST",
                url: 'PencairanProduk.aspx/LoadDataPencairan',
                //data: "{mon: '" + paramMonth + "', yr: '" + paramYear + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d != null) {
                        var obj = JSON.parse(response.d);
                        //console.log('response.e',JSON.parse(JSON.stringify(obj)));
                        if (JSON.parse(JSON.stringify(obj.length)) > 0) {
                            for (var i = 0; i < JSON.parse(JSON.stringify(obj.length)) ; i++) {
                                //console.log('response.d', obj[i].NAME);
                                $("#topHeto").html(thousands_separators(obj[i].HETO));
                                $("#topHaji").html(thousands_separators(obj[i].HAJI));
                                $("#topMedical").html(thousands_separators(obj[i].MEDICAL));
                                $("#topScf").html(thousands_separators(obj[i].SCF));
                                $("#topFactoring").html(thousands_separators(obj[i].FACTORING));
                                $("#topGrand").html(thousands_separators(obj[i].GrandTotal));
                            }
                        }
                    }

                    else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }

            });
            //console.log("eka", agreementNo)
        }

        function LoadDtMarketing() {

            $.ajax({
                type: "POST",
                url: 'PencairanProduk.aspx/LoadDataTopMarketing',
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
                        $("#top5_ao").html(body);
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

        jQuery(function ($) {
            $('#tblPipBud').DataTable({
                'searching': false,
                'ordering': false,
                'paging': false,
                'bInfo': false,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

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

        function ActivityLoadPP() {

            jQuery.ajax({
                type: "POST",
                url: 'PencairanProduk.aspx/ActivityLoad1',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessPP(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }

        function detailSummaryPP(type, product, week) {
            if (type === "Disburse") {
                window.location.href = "DetailApplication.aspx?type=" + type + "&pro=" + product + "&wk=" + week;
                return;
            }
        }

        function OnSuccessPP(r) {

            var pip = [];
            var bud = [];
            var tot = [];

            var text = '<table class="table table-striped jambo_table bulk_action" id="tblPipBud"><thead><tr class="headings"><th class="column-title" style="text-align: left">Keterangan </th><th class="column-title" style="text-align: right">HETO</th><th class="column-title" style="text-align: right">MEDICAL</th><th class="column-title" style="text-align: right">SCF</th><th class="column-title" style="text-align: right">FACTORING</th><th class="column-title" style="text-align: right">HAJI</th><th class="column-title" style="text-align: right">Grand Total</th></tr></thead><tbody id="bodyTblPipBud">';
            var row = '';

            for (var i = 0; i < r.length; i++) {
                if (r[i].Keterangan === 'Realisasi') {
                    pip.push(parseFloat(r[i].HETO));
                    pip.push(parseFloat(r[i].MEDICAL));
                    pip.push(parseFloat(r[i].SCF));
                    pip.push(parseFloat(r[i].FACTORING));
                    //pip.push(parseFloat(r[i].HAJI));
                }
                if (r[i].Keterangan === 'Target/Budget') {
                    bud.push(parseFloat(r[i].HETO));
                    bud.push(parseFloat(r[i].MEDICAL));
                    bud.push(parseFloat(r[i].SCF));
                    bud.push(parseFloat(r[i].FACTORING));
                    //bud.push(parseFloat(r[i].HAJI));
                }
                if (r[i].Keterangan === 'Total %') {
                    tot.push(parseFloat(r[i].HETO));
                    tot.push(parseFloat(r[i].MEDICAL));
                    tot.push(parseFloat(r[i].SCF));
                    tot.push(parseFloat(r[i].FACTORING));
                    tot.push(parseFloat(r[i].HAJI));
                }

                var totals = 'TOTAL_DISBURSE';
                var nul = '';
                var pi = 'PIPELINE';
                var het = 'HETO';
                var med = 'MEDICAL';
                var scf = 'SCF';
                var fac = 'FACTORING';
                var haj = 'HAJI';

                var date = new Date();
                //var month = date.getWeek();
                var week = getWeekOfMonth(date);

                row += '<tr class="even pointer"><td class="text-left" style="font-weight:bold">' + r[i].Keterangan + ' </td><td class="text-right"> <a href="#"onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + het + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].HETO) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + med + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].MEDICAL) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + scf + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].SCF) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + fac + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].FACTORING) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + haj + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].HAJI) + '</a> </td><td class="text-right"><strong><a href="#" onclick="detailSummaryPP(\'' + r[i].Keterangan + '\', \'' + totals + '\', \'' + getWeekOfMonth(date) + '\')">' + thousands_separators(r[i].GrandTotal) + '</a></strong></td></tr>';
            }

            text += row;
            text += '</tbody> </table>';

            $('#divTblPipBud').html(text);

            $('#tblPipBud').DataTable({
                'searching': false,
                'ordering': false,
                'paging': false,
                'bInfo': false,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });


            var ctx = document.getElementById("mybarChartPP");
            var v = $.each(mybarChartPP, function () {
                var customer = $(this);
                $html$(this).find("a").text();
            });

            var mybarChartPP = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["HETO", "MEDICAL", "SCF", "FACTORING"],
                    datasets: [{
                        label: 'Realisasi',
                        backgroundColor: "#26B99A",
                        data: pip,
                    },
                    {
                        label: 'Target',
                        backgroundColor: "#03586A",
                        data: bud,
                    }]
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
