<%--
  Created by IntelliJ IDEA.
  User: zuikaku
  Date: 2019/8/31
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Admin</title>

    <!-- Vendor CSS -->
    <link href="${pageContext.request.contextPath}/vendors/bower_components/animate.css/animate.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/nouislider/distribute/jquery.nouislider.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/farbtastic/farbtastic.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/bower_components/chosen/chosen.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/summernote/dist/summernote.css" rel="stylesheet">


    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/css/app.min.1.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/app.min.2.css" rel="stylesheet">

    <!-- Following CSS are used only for the Demp purposes thus you can remove this anytime. -->
    <style type="text/css">
        .toggle-switch .ts-label {
            min-width: 130px;
        }
    </style>
</head>

<body>


<section id="main">


    <section id="content">
        <div class="container">
            <div class="block-header">
                <h1>教室新增</h1>


            </div>

            <div class="card">
                <div class="card-body card-padding">
                    <p class="c-black f-500 m-b-5">教室信息</p>
                    <br/><br/>

                    <div class="row">
                        <div class="col-sm-4">

                            <form id="addForm" name="addForm" action="${pageContext.request.contextPath}/roomController/addRoom"
                                  method="post">
                                    <div class="form-group">
                                        <label>教室编号</label>
                                        <input type="text" name="rId" class="form-control" placeholder="教室编号一旦创建不能更改，请仔细核对！">
                                    </div>
                                <br>
                                <div class="form-group">
                                    <label>教室位置</label>
                                    <input type="text" name="position" class="form-control" placeholder="填写新的教室位置">
                                </div>
                                <br>
                                <div class="form-group">
                                    <label>教室容量</label>
                                    <input type="text" name="maxCount" class="form-control" placeholder="填写新的教室容量">
                                </div>
                                <button type="submit" class="btn btn-success waves-effect">添加教室信息
                                </button>
                            </form>
                            <div id="resultBox">

                            </div>
                        </div>


                        <br/>

                    </div>

                    <br/>
                </div>
            </div>
        </div>
    </section>
</section>


<!-- Javascript Libraries -->
<script src="${pageContext.request.contextPath}/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

<script src="${pageContext.request.contextPath}/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/nouislider/distribute/jquery.nouislider.all.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/summernote/dist/summernote-updated.min.js"></script>

<script src="${pageContext.request.contextPath}/vendors/bower_components/chosen/chosen.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/fileinput/fileinput.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/input-mask/input-mask.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/farbtastic/farbtastic.min.js"></script>

<script src="${pageContext.request.contextPath}/js/functions.js"></script>
<script src="${pageContext.request.contextPath}/js/demo.js"></script>

</body>
<script type="text/javascript">
    function addUser() {
        if ($("input:eq(0)").val() !== '' && $("input:eq(2)").val() !== '') {
            //$("form").submit();

            $.ajax({
                type: 'POST',
                data: new FormData($("#addForm")[0]),
                url: '${pageContext.request.contextPath}/employee/add',
                processData: false,
                contentType: false,
                dataType: "html",
                success: function (data) {
                    // window.alert("请求已发送");
                    $("#resultBox").html(data);
                }
            });
        } else {
            window.alert("数据不能为空");
        }
    }
</script>
</html>