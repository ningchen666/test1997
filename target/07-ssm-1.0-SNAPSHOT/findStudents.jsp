<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/" ;
%>
<html>
<head>
    <title>查询学生</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function(){

                $.ajax({
                    url:"student/selectStudents.do",
                    type:"get",
                    success:function (resp) {
                        //alert(resp.name + "   "+ resp.age)
                        $("#info").empty()
                         $.each(resp,function (i,n) {
                            // alert(n.name+"   "+n.age)

                            $("#info").append("<tr>")
                                .append("<td>"+n.id+"</td>")
                                .append("<td>"+n.name+"</td>")
                                .append("<td>"+n.age+"</td>")
                             .append("</tr>")
                         })

                    }
                })

        })
    </script>
</head>
<body>

        <table>
            <thead>
                <tr>
                    <td>学号</td>
                    <td>姓名</td>
                    <td>年龄</td>
                </tr>
            </thead>

            <tbody id="info">

            </tbody>
        </table>
</body>
</html>
