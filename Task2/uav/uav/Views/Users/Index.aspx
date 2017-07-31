<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<uav.Models.User>>" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
<li class="active">Index</li>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<%--<link href="../../Content/UsersStyle.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/UsersStyle.css") %>" rel="stylesheet" type="text/css"/>
<%--<link href="../../Content/Users_datatable.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/Users_datatable.css") %>" rel="stylesheet" type="text/css"/>

<%--<script src="../../Scripts/jquery-1.8.2.js" type="text/javascript"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-1.8.2.js") %>
<%--<script src="../../Scripts/jquery-ui-1.8.24.js" type="text/javascript"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-ui-1.8.24.js") %>
<%--<script src="../../Scripts/jquery.dataTables.js" type="text/javascript"></script>--%>
<%: Scripts.Render("~/Scripts/jquery.dataTables.js") %>

<script type="text/javascript">
    $(document).ready(function () {

        $('#data tbody tr:even').addClass("silver");

        $('#data tbody tr').mouseover(function () {
            $(this).addClass('dataHover');
        });

        $('#data tbody tr').mouseout(function () {
            $(this).removeClass('dataHover');
        });


        $("#data").dataTable({
            //"bJQueryUI": true,
            "bAutoWidth": false,
            "aaSorting": [[0, "asc"]],
            "bSort":false,
        });



    });
    //$(document).ready(function () {
    //    $("#data").dataTable();
    //    "sDom"; '<"nav"lf>t<"nav"i>'
    //});
</script>



<%--<script type="text/javascript">
    $(document).ready(function () {
        $("#data").dataTable({
            //                "bPaginate": true, //开关，是否显示分页器
            //                "bInfo": true, //开关，是否显示表格的一些信息
            //                "bFilter": true, //开关，是否启用客户端过滤器
            //                "sDom": "<>lfrtip<>",
            //                "bAutoWith": false,
            //                "bDeferRender": false,
            //                "bJQueryUI": false, //开关，是否启用JQueryUI风格
            //                "bLengthChange": true, //开关，是否显示每页大小的下拉框
            //                "bProcessing": true,
            //                "bScrollInfinite": false,
            //                "sScrollY": "800px", //是否开启垂直滚动，以及指定滚动区域大小,可设值：'disabled','2000px'
            //                "bSort": true, //开关，是否启用各列具有按列排序的功能
            //                "bSortClasses": true,
            //                "bStateSave": false, //开关，是否打开客户端状态记录功能。这个数据是记录在cookies中的，打开了这个记录后，即使刷新一次页面，或重新打开浏览器，之前的状态都是保存下来的- ------当值为true时aoColumnDefs不能隐藏列
            //                "sScrollX": "50%", //是否开启水平滚动，以及指定滚动区域大小,可设值：'disabled','2000%'
            //                "aaSorting": [[0, "asc"]],
            //                "aoColumnDefs": [{ "bVisible": false, "aTargets": [0]}]//隐藏列
            //                "sDom": '<"H"if>t<"F"if>',
            "bAutoWidth": false, //自适应宽度
            "bSort": false,
            "sPaginationType": "full_numbers",
            "oLanguage": {
                "sProcessing": "正在加载中......",
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "对不起，查询不到相关数据！",
                "sEmptyTable": "表中无数据存在！",
                "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
                "sSearch": "搜索",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast": "末页"
                }
            } //多语言配置

        });
    });
    </script>--%>

<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Index</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The index page of users.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>

<div class="contactContainer" >
<table id="data">
    <thead>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Username) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Password) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Gender) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Country) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Address) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Email) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Phone_number) %>
        </th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.Username) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Password) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Gender) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Country) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Address) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Email) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Phone_number) %>
            </td>
            <td>
            
                <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> 
                <%: Html.ActionLink("Details", "Details", new { id=item.Id }) %> 
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
            
            </td>
        </tr>
    <% } %>
    </tbody>

</table>
<div class="rightC">
     <%: Html.ActionLink("Create New", "Create") %>
</div>
    
</div>
</asp:Content>


