<%@ Page Title="" Language="C#" MasterPageFile="~/iDashboard.Master" AutoEventWireup="true" CodeBehind="DisbursementBranch.aspx.cs" Inherits="iDashboard.DisbursementBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="row">

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>Summary Disbursement Branch - Conven</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="ConvenCanvas" width="70" height="13"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <div class="x_panel">
                                    <div class="x_content">
                                        <div class="x_title">
                                            <h2>Summary Disbursement Branch - Non Conven</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <canvas id="NonConvenCanvas" width="70" height="13"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <%--<br>
                    <br>--%>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
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
                url: 'DisbursementBranch.aspx/LoadDataPencairan',
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
                url: 'DisbursementBranch.aspx/LoadDataTopMarketing',
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
                url: 'DisbursementBranch.aspx/ActivityLoad1',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessConven(rsp.d)
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
                url: 'DisbursementBranch.aspx/ActivityLoad2',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (rsp) {
                    OnSuccessNonConven(rsp.d)
                },
                failure: function (r) {
                    alert(r);
                },
                error: function (response) {
                    alert(r);
                }
            });
        }

        function OnSuccessConven(r) {

            var cab = [];
            var amt = [];

            for (var i = 0; i < r.length; i++) {
                
                amt.push(parseFloat(r[i].Amount));
            }

            for (var i = 0; i < r.length; i++) {

                cab.push(r[i].Cabang);
            }

            console.log("eka-1", cab);
            console.log("eka-2", amt);

            var MeSeContext = document.getElementById("ConvenCanvas").getContext("2d");
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

        function OnSuccessNonConven(r) {

            var cab2 = [];
            var amt2 = [];

            for (var i = 0; i < r.length; i++) {

                amt.push(parseFloat(r[i].Amount));
            }

            for (var i = 0; i < r.length; i++) {

                cab.push(r[i].Cabang);
            }

            console.log("eka", cab2);
            console.log("eka2", amt2);

            var MeSeContext2 = document.getElementById("NonConvenCanvas");
            var MeSeData2 = {
                labels: cab2,
                datasets: [{
                    label: "Total Disbursement",
                    backgroundColor: ["#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966", "#669911", "#119966"],
                    hoverBackgroundColor: ["#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba", "#6cb2ba"],
                    data: amt2
                }]
            };

            var MeSeChart2 = new Chart(MeSeContext2, {
                type: 'horizontalBar',
                data: MeSeData2,
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
</asp:Content>