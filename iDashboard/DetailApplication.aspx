<%@ Page Title="" Language="C#" MasterPageFile="~/iDashboard.Master" AutoEventWireup="true" CodeBehind="DetailApplication.aspx.cs" Inherits="iDashboard.DetailApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="row">
                        
                        <div class="col-sm-12">
                            
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="x_content">
                                            <h2>Detail Application</h2>
                                            <div class="table-responsive" id="divTblWK">
                                                <table class="table table-striped jambo_table bulk_action" id="tblWK">
                                                    <thead>
                                                        <tr class="headings">
                                                            <th class="column-title" style="text-align:center">APPLICATION NO </th>
                                                            <th class="column-title">CLIENT NAME </th>
                                                            <th class="column-title">BRANCH </th>
                                                            <th class="column-title">NTF </th>
                                                            <th class="column-title">TENOR </th>
                                                            <th class="column-title">STATUS </th>
                                                            <th class="column-title">LAMA PROSES </th>
                                                            <th class="bulk-actions" colspan="7">
                                                            <a class="antoo" style="color: #fff; font-weight: 500;">Bulk Actions ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="bodyTblWK">
                                                    </tbody>
                                                </table>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                        </div>
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
    <script>

                jQuery(function ($) {
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': false,
                        'paging': true,
                        'bInfo': false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });

                    LoadAllEvent();
                    //setInterval(LoadAllEvent, 300000);
                });

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

                const urlSearchParams = new URLSearchParams(window.location.search);
                const params = Object.fromEntries(urlSearchParams.entries());

                //console.log("ekka1", urlSearchParams, params, params.pro, params.wk)
                var date = new Date();
                var month = date.getMonth()+1;
                var year = date.getFullYear();

                paramType = params.type;
                paramMonth = month;
                paramYear = year;
                paramProduct = params.pro;
                paramWeek = params.wk;

                function LoadAllEvent() {
                    DetailLoad(paramType, paramMonth, paramYear, paramProduct, paramWeek);
                }

                console.log("ekaaaaa", paramType, paramMonth, paramYear, paramProduct, paramWeek)

                function DetailLoad(paramType, paramMonth, paramYear, paramProduct, paramWeek) {
                    $.ajax({
                        type: "POST",
                        url: 'DetailApplication.aspx/DetailLoad',
                        data: '{paramType:"' + paramType + '", paramMonth:"' + paramMonth + '", paramYear:"' + paramYear + '", paramProduct:"' + paramProduct + '",  paramWeek:"' + paramWeek + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            OnSuccess(response.d);

                        },
                        failure: function (response) {
                            alertBox('data failed. error: ' + response.d);
                        }
                    });
                }

                
                function OnSuccess(r) {

                    //var paramType = getParameterByName('paramType') == null ? paramType : getParameterByName('paramType');
                    //var paramProduct = getParameterByName('paramProduct') == null ? paramProduct : getParameterByName('paramProduct');
                    //var paramWeek = getParameterByName('paramWeek') == null ? paramWeek : getParameterByName('paramWeek');

                    var text = '<div class="col-md-9 col-sm-12 col-xs-12"><br><br><table class="table table-striped jambo_table bulk_action" id="tblWK"> <thead> <tr class="headings"> <th class="column-title" style="text-align:center">APPLICATION NO </th> <th class="column-title" style="text-align:left">CLIENT NAME </th> <th class="column-title" style="text-align:left">BRANCH </th> <th class="column-title" style="text-align:center">NTF </th> <th class="column-title" style="text-align:right">TENOR </th> <th class="column-title" style="text-align:left">STATUS </th> <th class="column-title" style="text-align:center">LAMA PROSES </th> <th class="bulk-actions" colspan="7"> <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a> </th> </tr> </thead> <tbody id="bodyTblWK">';
                    var row = '';

                    for (var i = 0; i < r.length; i++) {
                            
                        row += '<tr class="even pointer"><td class="" style="text-align:left">' + r[i].ApplicNo + ' </td><td class="" style="text-align:left">' + r[i].ClientName + ' </td><td class="" style="text-align:left">' + r[i].Branch + '</td><td class="" style="text-align:right">' + thousands_separators(r[i].NTF) + '</td><td class="" style="text-align:right">' + r[i].Tenor + '</td><td class="" style="text-align:left">' + r[i].Status + '</strong></td> <td class="" style="text-align:center">' + r[i].LamaProses + ' HARI'+ '</strong></td></tr>'
                            //row +='<tr class="even pointer"><td class="" style="font-weight:bold">' + r[i].ApplicNo + ' </td><td class="">' + r[i].ClientName +' </td><td class="">' + r[i].Branch + '</td><td class="">' + r[i].NTF + '</td><td class="">' + r[i].Tenor + '</td><td class="">' + r[i].Status + '</strong></td></tr>';
                    }

                    text += row;
                    text += '</tbody> </table>';
                    $('#divTblWK').html(text);
                    $('#tblWK').DataTable({
                        'searching': false,
                        'ordering': false,
                        'paging': true,
                        'bInfo': false,
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });
                }
            </script>
</asp:Content>