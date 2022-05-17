<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAll.aspx.cs" Inherits="iDashboard.DisplayAll" %>

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
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, sans-serif;
            margin: 0;
        }

        .mySlides {
            display: none;
        }

        img {
            vertical-align: middle;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 2480px;
            position: relative;
            margin: auto;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            opacity: 0;
            user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            /*display: inline-block;*/
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #ffffff;
            }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fade {
            from {
                opacity: .4;
            }

            to {
                opacity: 1;
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .prev, .next, .text {
                font-size: 11px;
            }
        }
    </style>
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
                                <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
                                <li><a href="WeeklyTarget.aspx"><i class="fa fa-circle"></i>&emsp;<small>Weekly Target</small></a></li>
                                <li><a href="PencairanProduk.aspx"><i class="fa fa-circle"></i>&emsp;<small>Pencairan Produk</small></a></li>
                                <li><a href="SLA_Week.aspx"><i class="fa fa-circle"></i>&emsp;<small>SLA by Week</small></a></li>
                                <li><a href="HallofFame.aspx"><i class="fa fa-circle"></i>&emsp;<small>Hall of Fame</small></a></li>
                                <li><a href="CashInSummary.aspx"><i class="fa fa-circle"></i>&emsp;<small>Cash In Summary   </small></a></li>


                                <%--<li><a><i class="glyphicon glyphicon-list-alt"></i>&emsp;Content <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="WeeklyTarget.aspx">Weekly Target</a></li>
                                        <li><a href="PencairanProduk.aspx">Pencairan Produk</a></li>
                                        <li><a href="SLA_Week.aspx">SLA by Week</a></li>
                                        <li><a href="SLA_Status.aspx">SLA by Status</a></li>
                                    </ul>
                                </li>--%>

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
                        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">

                                    <%--img1--%>
                                    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                                        <h2>Weekly Target Sales</h2>
                                    </div>
                                    <div class="col-md-6 col-sm-12 col-xs-12 col-lg-offset-3">
                                        <div class="x_content">

                                            <canvas id="mybarChartWk"></canvas>

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
                                    <%--img1--%>
                                </div>
                                <div class="item">

                                    <div role="main">
                                        <%--img2--%>

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

                                        <div class="col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                                            <%--<h2>Pencairan Produk</h2>--%>
                                        </div>
                                        <div class="col-md-8 col-sm-12 col-xs-12 col-lg-offset-2">
                                            <div class="x_content">
                                                <canvas id="mybarChartPP" width="70" height="23"></canvas>
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
                                                            <tbody id="bodyTblSlaS">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--img2--%>
                                </div>
                                <div class="item">

                                    <%--img3--%>
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
                                                <div class="table-responsive" id="divTblSLAwk">
                                                    <table class="table table-striped jambo_table bulk_action" id="tblSLAwk">
                                                        <thead>
                                                            <tr class="headings">
                                                                <th class="column-title">Branch </th>
                                                                <th class="column-title">Week 1</th>
                                                                <th class="column-title">Week 2</th>
                                                                <th class="column-title">Week 3</th>
                                                                <th class="column-title">Week 4</th>
                                                                <th class="column-title">Week 5</th>
                                                                <th class="column-title">Grand Total</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="bodyTblSLAwk">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--img3--%>
                                </div>
                                <div class="item">

                                    <%--img4--%>

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
                                                <div class="table-responsive" id="divTblSlaS">
                                                    <table class="table table-striped jambo_table bulk_action" id="tblSlaS">
                                                        <thead>
                                                            <tr class="headings" style="height: 1px">
                                                                <th class="column-title" style="font-size: 11px">Branch </th>
                                                                <th class="column-title" style="font-size: 11px">BRH MGR</th>
                                                                <th class="column-title" style="font-size: 11px">CA</th>
                                                                <th class="column-title" style="font-size: 11px">HOLDING</th>
                                                                <th class="column-title" style="font-size: 11px">AM</th>
                                                                <th class="column-title" style="font-size: 11px">MEETING KOMITE</th>
                                                                <th class="column-title" style="font-size: 11px">PREPARE CETAK KONTRAK</th>
                                                                <th class="column-title" style="font-size: 11px">SIGNING</th>
                                                                <th class="column-title" style="font-size: 11px">PREPARE PO</th>
                                                                <th class="column-title" style="font-size: 11px">TAGIHAN</th>
                                                                <th class="column-title" style="font-size: 11px">FINANCE</th>
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
                                    <%--img4--%>
                                </div>
                                <div class="item">
                                    <%--img5--%>

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
                                    <%--img5--%>
                                </div>
                                <div class="item">
                                    <%--img6--%>

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
                                    <%--img6--%>
                                </div>
                            </div>
                        </div>

                    </div>
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
    
    <%--</div>--%>

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

        //get current week of current month
        function getWeekOfMonth(date) {
            var day = date.getDate()
            day -= (date.getDay() == 0 ? 6 : date.getDay() - 1);
            //get monday of this week
            //special case handling for 0 (sunday)

            day += 7;
            //for the first non full week the value was negative

            prefixes = ['0', '1', '2', '3', '4', '5'];
            return prefixes[0 | (day) / 7];
        }

        jQuery(function ($) {
            LoadAllEvent();
            $('.carousel').carousel({
                interval: 4000
            })

            $('#carouselExampleSlidesOnly').bind('slid.bs.carousel', function () {
                currentIndex = $('div.active').index() + 1;
                console.log('reza', currentIndex);
                if (currentIndex === 1) {
                    LoadAllEvent();
                } else if (currentIndex === 2) {
                    LoadAllEventPP();
                } else if (currentIndex === 3) {
                    LoadAllEventSW();
                } else if (currentIndex === 4) {
                    LoadAllEventSS();
                } else if (currentIndex === 5) {
                    LoadAllEventCI();
                } else if (currentIndex === 6) {
                    LoadAllEventHAF();
                }
            });

        });



        //============================================================WEEKLY TARGET START==============================================================
        function LoadAllEvent() {
            ActivityLoad();
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
            
            var text = '<table class="table table-striped jambo_table bulk_action" id="tblWK"><thead><tr class="headings"><th class="column-title" style="text-align: left">PRODUCT </th><th class="column-title" style="text-align: right">WEEK 1 </th><th class="column-title" style="text-align: right">WEEK 2 </th><th class="column-title" style="text-align: right">WEEK 3 </th><th class="column-title" style="text-align: right">WEEK 4 </th><th class="column-title" style="text-align: right">WEEK 5 </th><th class="column-title" style="text-align: right">GRAND TOTAL </th></tr></thead><tbody id="bodyTblWK">';
            var row = '';

            for (var i = 0; i < r.length; i++) {
                if (r[i].GroupDesc === 'FACTORING') {
                    fac.push(parseFloat(r[i].Week1));
                    fac.push(parseFloat(r[i].Week2));
                    fac.push(parseFloat(r[i].Week3));
                    fac.push(parseFloat(r[i].Week4));
                    fac.push(parseFloat(r[i].Week5));
                }
                if (r[i].GroupDesc === 'HETO') {
                    het.push(parseFloat(r[i].Week1));
                    het.push(parseFloat(r[i].Week2));
                    het.push(parseFloat(r[i].Week3));
                    het.push(parseFloat(r[i].Week4));
                    het.push(parseFloat(r[i].Week5));
                }
                if (r[i].GroupDesc === 'MEDICAL') {
                    med.push(parseFloat(r[i].Week1));
                    med.push(parseFloat(r[i].Week2));
                    med.push(parseFloat(r[i].Week3));
                    med.push(parseFloat(r[i].Week4));
                    med.push(parseFloat(r[i].Week5));
                }
                if (r[i].GroupDesc === 'SCF') {
                    scf.push(parseFloat(r[i].Week1));
                    scf.push(parseFloat(r[i].Week2));
                    scf.push(parseFloat(r[i].Week3));
                    scf.push(parseFloat(r[i].Week4));
                    scf.push(parseFloat(r[i].Week5));
                }
                if (r[i].GroupDesc === 'HAJI') {
                    haj.push(parseFloat(r[i].Week1));
                    haj.push(parseFloat(r[i].Week2));
                    haj.push(parseFloat(r[i].Week3));
                    haj.push(parseFloat(r[i].Week4));
                    haj.push(parseFloat(r[i].Week5));
                }

                var we = 'WEEK';
                var tot = 'TOTAL';
                row += '<tr class="even pointer"><td class="text-left" style="font-weight:bold">' + r[i].GroupDesc + ' </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 1)">' + thousands_separators(r[i].Week1) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 2)">' + thousands_separators(r[i].Week2) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 3)">' + thousands_separators(r[i].Week3) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 4)">' + thousands_separators(r[i].Week4) + '</a> </td><td class="text-right"> <a href="#" onclick="detailSummary(\'' + we + '\',\'' + r[i].GroupDesc + '\', 5)">' + thousands_separators(r[i].Week5) + '</a> </td><td class="text-right"><strong> <a href="#" onclick="detailSummary(\'' + tot + '\',\'' + r[i].GroupDesc + '\')">' + thousands_separators(r[i].GrandTotal) + '</a></strong></td></tr>'

            }

            text += row;
            text += '</tbody> </table>';

            //console.log('textEka', text);

            $('#divTblWK').html(text);
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
            var ctx = document.getElementById("mybarChartWk");
            var v = $.each(mybarChartWk, function () {
                var customer = $(this);
                $html$(this).find("a").text();
            });

            var mybarChartWk = new Chart(ctx, {
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
        //============================================================WEEKLY TARGET END====================================================================
        //============================================================PENCAIRAN PRODUCT START==============================================================
        $(document).ready(function () {
            LoadData();
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

                    } else {
                        alert('File not yet!');
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }

            });
            //console.log("eka", agreementNo)
        }

        function LoadAllEventPP() {
            ActivityLoadPP();
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
            window.location.href = "DetailApplication.aspx?type=" + type + "&pro=" + product + "&wk=" + week;
            return;
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
                if (r[i].Keterangan === 'Target / Budget') {
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

                //console.log("ekaasaag", week, date);

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
                        label: 'Disburse',
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
        //============================================================PENCAIRAN PRODUCT END==============================================================
        //============================================================SLA WEEK START=====================================================================
        function LoadAllEventSW() {
            ActivityLoadSW();
        }

        //setTimeout(ActivityLoadSW, 5000);
        function ActivityLoadSW() {

            jQuery.ajax({
                type: "POST",
                url: 'SLA_Week.aspx/ActivityLoad',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessSW(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }

        function detailSummarySW(type, branch, value) {
            window.location.href = "DetailApplicationBranch.aspx?type=" + type + "&brn=" + branch + "&val=" + value;

            return;
        }

        function OnSuccessSW(r) {

            var pip = [];
            var bud = [];
            var tot = [];

            var text = '<table class="table table-striped jambo_table bulk_action" id="tblSLAwk"><thead><tr style="height:1px;" class="headings"><th class="column-title" style="font-size: 11px;">Branch </th><th class="column-title" style="text-align:right;font-size: 11px;" >Week 1</th><th class="column-title" style="text-align:right;font-size: 11px;">Week 2</th><th class="column-title" style="text-align:right;font-size: 11px;">Week 3</th><th class="column-title" style="text-align:right;font-size: 11px;">Week 4</th><th class="column-title" style="text-align:right;font-size: 11px;">Week 5</th><th class="column-title" style="text-align:right;font-size: 11px;">Grand Total</th></tr></thead><tbody id="bodyTblSLAwk">';
            var row = '';

            for (var i = 0; i < r.length; i++) {
                if (r[i].Keterangan === 'Pipeline') {
                    pip.push(parseFloat(r[i].HETO));
                    pip.push(parseFloat(r[i].MEDICAL));
                    pip.push(parseFloat(r[i].SCF));
                    pip.push(parseFloat(r[i].FACTORING));
                    pip.push(parseFloat(r[i].GrandTotal));
                }
                if (r[i].Keterangan === 'Budget') {
                    bud.push(parseFloat(r[i].HETO));
                    bud.push(parseFloat(r[i].MEDICAL));
                    bud.push(parseFloat(r[i].SCF));
                    bud.push(parseFloat(r[i].FACTORING));
                    bud.push(parseFloat(r[i].GrandTotal));
                }
                if (r[i].Keterangan === 'Total %') {
                    tot.push(parseFloat(r[i].HETO));
                    tot.push(parseFloat(r[i].MEDICAL));
                    tot.push(parseFloat(r[i].SCF));
                    tot.push(parseFloat(r[i].FACTORING));
                    tot.push(parseFloat(r[i].GrandTotal));
                }

                var type = 'WEEK_CONVEN';
                var w1 = "Week 1";
                var w2 = "Week 2";
                var w3 = "Week 3";
                var w4 = "Week 4";
                var w5 = "Week 5";

                var date = new Date();
                var week = getWeekOfMonth(date);

                row += '<tr class="even pointer" style="height:1px;"><td class="text-left" style="font-weight:bold;font-size: 11px;">' + r[i].Branch + ' </td><td class="text-right" style="font-size: 11px;"> <a href="#"onclick="detailSummarySW(\'' + type + '\', \'' + r[i].Branch + '\', \'' + w1 + '\')">' + thousands_separators(r[i].Week1) + '</a> </td><td class="text-right" style="font-size: 11px;"> <a href="#"onclick="detailSummarySW(\'' + type + '\', \'' + r[i].Branch + '\', \'' + w2 + '\')">' + thousands_separators(r[i].Week2) + '</a> </td><td class="text-right" style="font-size: 11px;"> <a href="#"onclick="detailSummarySW(\'' + type + '\', \'' + r[i].Branch + '\', \'' + w3 + '\')">' + thousands_separators(r[i].Week3) + '</a> </td><td class="text-right" style="font-size: 11px;"> <a href="#"onclick="detailSummarySW(\'' + type + '\', \'' + r[i].Branch + '\', \'' + w4 + '\')">' + thousands_separators(r[i].Week4) + '</a> </td><td class="text-right" style="font-size: 11px;"> <a href="#"onclick="detailSummary(\'' + type + '\', \'' + r[i].Branch + '\', \'' + w5 + '\')">' + thousands_separators(r[i].Week5) + '</a> </td><td class="text-right" style="font-size: 11px;"><strong>' + thousands_separators(r[i].GrandTotal) + '</strong></td></tr>';

            }

            text += row;
            text += '</tbody> </table>';

            $('#divTblSLAwk').html(text);

            $('#tblSLAwk').DataTable({
                'searching': false,
                'ordering': false,
                'paging': false,
                'bInfo': false,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        }
        //============================================================SLA WEEK END==============================================================
        //============================================================SLA STATUS START==========================================================
        function LoadAllEventSS() {
            ActivityLoadSS();
        }

        function ActivityLoadSS() {

            jQuery.ajax({
                type: "POST",
                url: 'SLA_Status.aspx/ActivityLoad',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessSS(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }

        function detailSummarySS(type, branch, value) {
            console.log("tessss", type, branch, value)
            window.location.href = "DetailApplicationBranch.aspx?type=" + type + "&brn=" + branch + "&val=" + value;
            //console.log("ekaajax")
            return;
        }

        function OnSuccessSS(r) {

            var pip = [];
            var bud = [];
            var tot = [];

            //var text = '<table class="table table-striped jambo_table bulk_action" id="tblWK"> <thead> <tr class="headings"> <th class="column-title">PRODUCT </th> <th class="column-title">WEEK 1 </th> <th class="column-title">WEEK 2 </th> <th class="column-title">WEEK 3 </th> <th class="column-title">WEEK 4 </th> <th class="column-title">WEEK 5 </th> <th class="column-title">GRAND TOTAL </th> <th class="bulk-actions" colspan="6"> <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a> </th> </tr> </thead> <tbody id="bodyTblWK">';
            var text = '<table class="table table-striped jambo_table bulk_action" id="tblSlaS"><thead><tr class="headings"><th class="column-title" style="text-align:center">Branch </th><th class="column-title" style="text-align:right">BRH MGR</th><th class="column-title" style="text-align:right">CA</th><th class="column-title style="text-align:right"">HOLDING</th><th class="column-title" style="text-align:right">AM</th><th class="column-title" style="text-align:center">MEETING KOMITE</th><th class="column-title" style="text-align:center">PREPARE CETAK KONTRAK</th><th class="column-title style="text-align:right"">SIGNING</th><th class="column-title" style="text-align:center">PREPARE PO</th><th class="column-title" style="text-align:right">TAGIHAN</th><th class="column-title" style="text-align:right">FINANCE</th></tr></thead><tbody id="bodyTblSlaS">';
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
                var fin = 'FINANCE';

                var date = new Date();
                //var month = date.getWeek();
                var week = getWeekOfMonth(date);

                //console.log("ekaasaag", week, date);

                row += '<tr class="even pointer"><td class="text-left" style="font-weight:bold">' + r[i].Branch + ' </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + brh + '\')">' + thousands_separators(r[i].Brhmgr) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + ca + '\')">' + thousands_separators(r[i].CA) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + hol + '\')">' + thousands_separators(r[i].Holding) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + am + '\')">' + thousands_separators(r[i].AM) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + mee + '\')">' + thousands_separators(r[i].MeetingKomite) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + pre + '\')">' + thousands_separators(r[i].PrepareCetakKontrak) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + sign + '\')">' + thousands_separators(r[i].Signing) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + prpo + '\')">' + thousands_separators(r[i].PreparePO) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + tag + '\')">' + thousands_separators(r[i].Tagihan) + '</a> </td><td class="text-right"> <a href="#"onclick="detailSummarySS(\'' + type + '\', \'' + r[i].Branch + '\', \'' + fin + '\')">' + thousands_separators(r[i].Finance) + '</a> </td></tr>';
                //row += '<tr class="even pointer"> <td class="" style="font-weight:bold">' + r[i].GroupDesc + ' </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 1)">' + r[i].Week1 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 2)">' + r[i].Week2 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 3)">' + r[i].Week3 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 4)">' + r[i].Week4 + '</a> </td> <td class=""> <a href="#" onclick="detailSummary(\'' + r[i].GroupDesc + '\', 5)">' + r[i].Week5 + '</a> </td> <td class=""><strong>' + r[i].GrandTotal + '</strong></td> </tr>';
                //console.log("eka",row)
            }

            text += row;
            text += '</tbody> </table>';

            //console.log('textEka', text);

            $('#divTblSlaS').html(text);
            $('#tblSlaS').DataTable({
                'searching': false,
                'ordering': false,
                'paging': false,
                'bInfo': false,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

        }
        //============================================================SLA STATUS END============================================================
        //============================================================CASH IN SUMMARY START=====================================================
        //jQuery(function ($) {

        //    LoadAllEventCI();
        //});

        function LoadAllEventCI() {
            ActivityLoadCI();
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

        $("#bulanTahun").html(monthName + ' ' + year);

        //console.log("afjas",newdate)

        function ActivityLoadCI() {

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
        //============================================================CASH IN SUMMARY END=====================================================
        //============================================================HALL OF FAME START======================================================
        //$(document).ready(function () {
        //    LoadDtMarketing();
        //    LoadDtMarketingNABF();
        //    LoadDtMarketingFAC();
        //    LoadDtMarketingHAJ();
        //});

        function LoadAllEventHAF() {
            LoadDtMarketing();
            LoadDtMarketingNABF();
            LoadDtMarketingFAC();
            LoadDtMarketingHAJ();
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
        //============================================================HALL OF FAME END========================================================
    </script>
    <%--</div>
    </div>--%>
</body>
</html>
