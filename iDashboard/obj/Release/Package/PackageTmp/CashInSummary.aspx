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
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>SUMMARY CASH IN <b id="bulanTahun"></b></h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="barPlusLine" width="70" height="13"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>SUMMARY CASH IN YEAR TO DATE</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="mixedLine" width="70" height="13"></canvas>
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
                url: 'CashInSummary.aspx/LoadDataSummaryMonthly',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessPPMonthly(rsp.d)
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
                url: 'CashInSummary.aspx/LoadDataSummaryYear',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessPPYearly(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }


        function OnSuccessPPMonthly(r) {
            console.log("ttt", r);

            var tar = [];
            var ove = [];
            var nor = [];
            var acc = [];

            for (var i = 0; i < r.length; i++) {

                //console.log("eka", i.toString());

                if (r[i].Keterangan === 'Target') {
                    tar.push(parseFloat(r[i].tgl_1));
                    tar.push(parseFloat(r[i].tgl_2));
                    tar.push(parseFloat(r[i].tgl_3));
                    tar.push(parseFloat(r[i].tgl_4));
                    tar.push(parseFloat(r[i].tgl_5));
                    tar.push(parseFloat(r[i].tgl_6));
                    tar.push(parseFloat(r[i].tgl_7));
                    tar.push(parseFloat(r[i].tgl_8));
                    tar.push(parseFloat(r[i].tgl_9));
                    tar.push(parseFloat(r[i].tgl_10));
                    tar.push(parseFloat(r[i].tgl_11));
                    tar.push(parseFloat(r[i].tgl_12));
                    tar.push(parseFloat(r[i].tgl_13));
                    tar.push(parseFloat(r[i].tgl_14));
                    tar.push(parseFloat(r[i].tgl_15));
                    tar.push(parseFloat(r[i].tgl_16));
                    tar.push(parseFloat(r[i].tgl_17));
                    tar.push(parseFloat(r[i].tgl_18));
                    tar.push(parseFloat(r[i].tgl_19));
                    tar.push(parseFloat(r[i].tgl_20));
                    tar.push(parseFloat(r[i].tgl_21));
                    tar.push(parseFloat(r[i].tgl_22));
                    tar.push(parseFloat(r[i].tgl_23));
                    tar.push(parseFloat(r[i].tgl_24));
                    tar.push(parseFloat(r[i].tgl_25));
                    tar.push(parseFloat(r[i].tgl_26));
                    tar.push(parseFloat(r[i].tgl_27));
                    tar.push(parseFloat(r[i].tgl_28));
                    tar.push(parseFloat(r[i].tgl_29));
                    tar.push(parseFloat(r[i].tgl_30));
                    tar.push(parseFloat(r[i].tgl_31));
                }

                if (r[i].Keterangan === 'Overdue') {
                    ove.push(parseFloat(r[i].tgl_1));
                    ove.push(parseFloat(r[i].tgl_2));
                    ove.push(parseFloat(r[i].tgl_3));
                    ove.push(parseFloat(r[i].tgl_4));
                    ove.push(parseFloat(r[i].tgl_5));
                    ove.push(parseFloat(r[i].tgl_6));
                    ove.push(parseFloat(r[i].tgl_7));
                    ove.push(parseFloat(r[i].tgl_8));
                    ove.push(parseFloat(r[i].tgl_9));
                    ove.push(parseFloat(r[i].tgl_10));
                    ove.push(parseFloat(r[i].tgl_11));
                    ove.push(parseFloat(r[i].tgl_12));
                    ove.push(parseFloat(r[i].tgl_13));
                    ove.push(parseFloat(r[i].tgl_14));
                    ove.push(parseFloat(r[i].tgl_15));
                    ove.push(parseFloat(r[i].tgl_16));
                    ove.push(parseFloat(r[i].tgl_17));
                    ove.push(parseFloat(r[i].tgl_18));
                    ove.push(parseFloat(r[i].tgl_19));
                    ove.push(parseFloat(r[i].tgl_20));
                    ove.push(parseFloat(r[i].tgl_21));
                    ove.push(parseFloat(r[i].tgl_22));
                    ove.push(parseFloat(r[i].tgl_23));
                    ove.push(parseFloat(r[i].tgl_24));
                    ove.push(parseFloat(r[i].tgl_25));
                    ove.push(parseFloat(r[i].tgl_26));
                    ove.push(parseFloat(r[i].tgl_27));
                    ove.push(parseFloat(r[i].tgl_28));
                    ove.push(parseFloat(r[i].tgl_29));
                    ove.push(parseFloat(r[i].tgl_30));
                    ove.push(parseFloat(r[i].tgl_31));
                }

                if (r[i].Keterangan === 'Normal') {
                    nor.push(parseFloat(r[i].tgl_1));
                    nor.push(parseFloat(r[i].tgl_2));
                    nor.push(parseFloat(r[i].tgl_3));
                    nor.push(parseFloat(r[i].tgl_4));
                    nor.push(parseFloat(r[i].tgl_5));
                    nor.push(parseFloat(r[i].tgl_6));
                    nor.push(parseFloat(r[i].tgl_7));
                    nor.push(parseFloat(r[i].tgl_8));
                    nor.push(parseFloat(r[i].tgl_9));
                    nor.push(parseFloat(r[i].tgl_10));
                    nor.push(parseFloat(r[i].tgl_11));
                    nor.push(parseFloat(r[i].tgl_12));
                    nor.push(parseFloat(r[i].tgl_13));
                    nor.push(parseFloat(r[i].tgl_14));
                    nor.push(parseFloat(r[i].tgl_15));
                    nor.push(parseFloat(r[i].tgl_16));
                    nor.push(parseFloat(r[i].tgl_17));
                    nor.push(parseFloat(r[i].tgl_18));
                    nor.push(parseFloat(r[i].tgl_19));
                    nor.push(parseFloat(r[i].tgl_20));
                    nor.push(parseFloat(r[i].tgl_21));
                    nor.push(parseFloat(r[i].tgl_22));
                    nor.push(parseFloat(r[i].tgl_23));
                    nor.push(parseFloat(r[i].tgl_24));
                    nor.push(parseFloat(r[i].tgl_25));
                    nor.push(parseFloat(r[i].tgl_26));
                    nor.push(parseFloat(r[i].tgl_27));
                    nor.push(parseFloat(r[i].tgl_28));
                    nor.push(parseFloat(r[i].tgl_29));
                    nor.push(parseFloat(r[i].tgl_30));
                    nor.push(parseFloat(r[i].tgl_31));
                }

                if (r[i].Keterangan === 'Accelerated') {
                    acc.push(parseFloat(r[i].tgl_1));
                    acc.push(parseFloat(r[i].tgl_2));
                    acc.push(parseFloat(r[i].tgl_3));
                    acc.push(parseFloat(r[i].tgl_4));
                    acc.push(parseFloat(r[i].tgl_5));
                    acc.push(parseFloat(r[i].tgl_6));
                    acc.push(parseFloat(r[i].tgl_7));
                    acc.push(parseFloat(r[i].tgl_8));
                    acc.push(parseFloat(r[i].tgl_9));
                    acc.push(parseFloat(r[i].tgl_10));
                    acc.push(parseFloat(r[i].tgl_11));
                    acc.push(parseFloat(r[i].tgl_12));
                    acc.push(parseFloat(r[i].tgl_13));
                    acc.push(parseFloat(r[i].tgl_14));
                    acc.push(parseFloat(r[i].tgl_15));
                    acc.push(parseFloat(r[i].tgl_16));
                    acc.push(parseFloat(r[i].tgl_17));
                    acc.push(parseFloat(r[i].tgl_18));
                    acc.push(parseFloat(r[i].tgl_19));
                    acc.push(parseFloat(r[i].tgl_20));
                    acc.push(parseFloat(r[i].tgl_21));
                    acc.push(parseFloat(r[i].tgl_22));
                    acc.push(parseFloat(r[i].tgl_23));
                    acc.push(parseFloat(r[i].tgl_24));
                    acc.push(parseFloat(r[i].tgl_25));
                    acc.push(parseFloat(r[i].tgl_26));
                    acc.push(parseFloat(r[i].tgl_27));
                    acc.push(parseFloat(r[i].tgl_28));
                    acc.push(parseFloat(r[i].tgl_29));
                    acc.push(parseFloat(r[i].tgl_30));
                    acc.push(parseFloat(r[i].tgl_31));
                }
            }

            var ctx = document.getElementById("barPlusLine").getContext('2d');
            var mixedChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: [
                      '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'
                    ],
                    datasets: [{
                        label: 'Target',
                        data: tar,
                        type: 'line',
                        fill: false,
                        borderColor: 'rgb(25,25,112,0.3)'
                    },
                    {
                        label: 'Percepatan',
                        borderColor: 'rgb(21, 164, 26)',
                        backgroundColor: 'rgba(21, 164, 26, 0.7)',
                        data: acc
                    },
                    {
                        label: 'Tepat Waktu',
                        borderColor: 'rgb(54, 162, 235)',
                        backgroundColor: 'rgba(54, 162, 235, 0.7)',
                        data: nor
                    },
                    {
                        label: 'Telat',
                        borderColor: 'rgb(255, 99, 132)',
                        backgroundColor: 'rgba(255, 99, 132, 0.7)',
                        data: ove
                    }
                    ]
                },

                options: {
                    tooltips: {
                        mode: 'label'
                        , callbacks: {

                            //afterBody: (ttItem) => (`TOTAL: ${ttItem.reduce((acc1, nor, ove) => (acc1 + nor.raw + ove.raw), 0)}`)
                        }
                    },
                    plugins: {
                        datalabels: {
                            font: {
                                weight: "bold"
                            },
                            color: "#fff"
                        }
                    },
                    scales: {
                        xAxes: [{
                            stacked: true,

                            gridLines: {
                                display: false,
                                fill: false
                            }
                        }],
                        yAxes: [{
                            stacked: true,
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        }



        function OnSuccessPPYearly(r) {
            console.log("eka2", r[0][0]);

            var mon1 = [];
            var mon2 = [];
            var mon3 = [];
            var name1 = [r[0].Keterangan];
            var name2 = [r[1].Keterangan];
            var name3 = [r[2].Keterangan];

            for (var i = 0; i < r.length; i++) {
                if (r[0]) {
                    mon1.push(parseFloat(r[0].tgl_1));
                    mon1.push(parseFloat(r[0].tgl_2));
                    mon1.push(parseFloat(r[0].tgl_3));
                    mon1.push(parseFloat(r[0].tgl_4));
                    mon1.push(parseFloat(r[0].tgl_5));
                    mon1.push(parseFloat(r[0].tgl_6));
                    mon1.push(parseFloat(r[0].tgl_7));
                    mon1.push(parseFloat(r[0].tgl_8));
                    mon1.push(parseFloat(r[0].tgl_9));
                    mon1.push(parseFloat(r[0].tgl_10));
                    mon1.push(parseFloat(r[0].tgl_11));
                    mon1.push(parseFloat(r[0].tgl_12));
                    mon1.push(parseFloat(r[0].tgl_13));
                    mon1.push(parseFloat(r[0].tgl_14));
                    mon1.push(parseFloat(r[0].tgl_15));
                    mon1.push(parseFloat(r[0].tgl_16));
                    mon1.push(parseFloat(r[0].tgl_17));
                    mon1.push(parseFloat(r[0].tgl_18));
                    mon1.push(parseFloat(r[0].tgl_19));
                    mon1.push(parseFloat(r[0].tgl_20));
                    mon1.push(parseFloat(r[0].tgl_21));
                    mon1.push(parseFloat(r[0].tgl_22));
                    mon1.push(parseFloat(r[0].tgl_23));
                    mon1.push(parseFloat(r[0].tgl_24));
                    mon1.push(parseFloat(r[0].tgl_25));
                    mon1.push(parseFloat(r[0].tgl_26));
                    mon1.push(parseFloat(r[0].tgl_27));
                    mon1.push(parseFloat(r[0].tgl_28));
                    mon1.push(parseFloat(r[0].tgl_29));
                    mon1.push(parseFloat(r[0].tgl_30));
                    mon1.push(parseFloat(r[0].tgl_31));
                }

                if (r[1]) {
                    mon2.push(parseFloat(r[1].tgl_1));
                    mon2.push(parseFloat(r[1].tgl_2));
                    mon2.push(parseFloat(r[1].tgl_3));
                    mon2.push(parseFloat(r[1].tgl_4));
                    mon2.push(parseFloat(r[1].tgl_5));
                    mon2.push(parseFloat(r[1].tgl_6));
                    mon2.push(parseFloat(r[1].tgl_7));
                    mon2.push(parseFloat(r[1].tgl_8));
                    mon2.push(parseFloat(r[1].tgl_9));
                    mon2.push(parseFloat(r[1].tgl_10));
                    mon2.push(parseFloat(r[1].tgl_11));
                    mon2.push(parseFloat(r[1].tgl_12));
                    mon2.push(parseFloat(r[1].tgl_13));
                    mon2.push(parseFloat(r[1].tgl_14));
                    mon2.push(parseFloat(r[1].tgl_15));
                    mon2.push(parseFloat(r[1].tgl_16));
                    mon2.push(parseFloat(r[1].tgl_17));
                    mon2.push(parseFloat(r[1].tgl_18));
                    mon2.push(parseFloat(r[1].tgl_19));
                    mon2.push(parseFloat(r[1].tgl_20));
                    mon2.push(parseFloat(r[1].tgl_21));
                    mon2.push(parseFloat(r[1].tgl_22));
                    mon2.push(parseFloat(r[1].tgl_23));
                    mon2.push(parseFloat(r[1].tgl_24));
                    mon2.push(parseFloat(r[1].tgl_25));
                    mon2.push(parseFloat(r[1].tgl_26));
                    mon2.push(parseFloat(r[1].tgl_27));
                    mon2.push(parseFloat(r[1].tgl_28));
                    mon2.push(parseFloat(r[1].tgl_29));
                    mon2.push(parseFloat(r[1].tgl_30));
                    mon2.push(parseFloat(r[1].tgl_31));
                }

                if (r[2]) {
                    mon3.push(parseFloat(r[2].tgl_1));
                    mon3.push(parseFloat(r[2].tgl_2));
                    mon3.push(parseFloat(r[2].tgl_3));
                    mon3.push(parseFloat(r[2].tgl_4));
                    mon3.push(parseFloat(r[2].tgl_5));
                    mon3.push(parseFloat(r[2].tgl_6));
                    mon3.push(parseFloat(r[2].tgl_7));
                    mon3.push(parseFloat(r[2].tgl_8));
                    mon3.push(parseFloat(r[2].tgl_9));
                    mon3.push(parseFloat(r[2].tgl_10));
                    mon3.push(parseFloat(r[2].tgl_11));
                    mon3.push(parseFloat(r[2].tgl_12));
                    mon3.push(parseFloat(r[2].tgl_13));
                    mon3.push(parseFloat(r[2].tgl_14));
                    mon3.push(parseFloat(r[2].tgl_15));
                    mon3.push(parseFloat(r[2].tgl_16));
                    mon3.push(parseFloat(r[2].tgl_17));
                    mon3.push(parseFloat(r[2].tgl_18));
                    mon3.push(parseFloat(r[2].tgl_19));
                    mon3.push(parseFloat(r[2].tgl_20));
                    mon3.push(parseFloat(r[2].tgl_21));
                    mon3.push(parseFloat(r[2].tgl_22));
                    mon3.push(parseFloat(r[2].tgl_23));
                    mon3.push(parseFloat(r[2].tgl_24));
                    mon3.push(parseFloat(r[2].tgl_25));
                    mon3.push(parseFloat(r[2].tgl_26));
                    mon3.push(parseFloat(r[2].tgl_27));
                    mon3.push(parseFloat(r[2].tgl_28));
                    mon3.push(parseFloat(r[2].tgl_29));
                    mon3.push(parseFloat(r[2].tgl_30));
                    mon3.push(parseFloat(r[2].tgl_31));
                }
            }

            var ctx = document.getElementById("mixedLine")
            var mixedLine = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: [
                      '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'
                    ],

                    datasets: [{
                        type: 'line',
                        label: name1,
                        data: mon1,
                        fill: false,
                        borderColor: 'rgb(255, 99, 132)',
                        backgroundColor: 'rgba(255, 99, 132, 0.5)'
                    },
                    {
                        type: 'line',
                        label: name2,
                        data: mon2,
                        fill: false,
                        borderColor: 'rgb(54, 162, 235)',
                        backgroundColor: 'rgba(54, 162, 235, 0.3)'
                    },
                    {
                        type: 'line',
                        label: name3,
                        data: mon3,
                        fill: false,
                        borderColor: 'rgb(21, 164, 26)',
                        backgroundColor: 'rgba(21, 164, 26, 0.3)'
                    }
                    ]
                },
                options: {
                    tooltips: {
                        mode: 'label'
                    }
                }
            });
        }

    </script>
</body>
</html>
