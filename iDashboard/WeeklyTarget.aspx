<%@ Page Title="" Language="C#" MasterPageFile="~/iDashboard.Master" AutoEventWireup="true" CodeBehind="WeeklyTarget.aspx.cs" Inherits="iDashboard.WeeklyTarget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
    <script>

        jQuery(function ($) {
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
</asp:Content>
