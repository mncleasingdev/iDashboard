<%@ Page Title="" Language="C#" MasterPageFile="~/iDashboard.Master" AutoEventWireup="true" CodeBehind="AchievementByBranch.aspx.cs" Inherits="iDashboard.AchievementByBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
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
</asp:Content>