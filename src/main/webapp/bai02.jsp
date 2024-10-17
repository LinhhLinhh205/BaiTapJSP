<%-- 
    Document   : bai02
    Created on : Oct 15, 2024, 2:52:17 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài 02:Diện tích-Chu vi HCN</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
    </head>
    <body>
        <h1 class="text-center">DIỆN TÍCH- CHU VI HÌNH CHỮ NHẬT</h1>
        <form action="bai02.jsp" method="POST">
            <table class="table container">
                <tr>
                    <td>Hãy nhập chiều dài: </td>
                    <td><input type="text" name="dai" value="" /></td>
                </tr
                <tr>
                    <td>Hãy nhập chiều rộng: </td>
                    <td><input type="text" name="rong" value="" /></td>
                </tr>
                <br>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính Toán" />
                        <input type="reset"  value="Tiếp tục" />
                    </td>                   
                </tr>
            </table>
        </form>
        <%
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            if (dai != null && rong != null) {
                double cd = Double.parseDouble(dai);
                double cr = Double.parseDouble(rong);
                Double dt = cd * cr;
                Double cv = (cd + cr) * 2;

        %>
        <br>
        <h2 class="text-center">Diện tích: <b> <%=dt%></b></h2>
        <br>
        <h2 class="text-center">Chu vi: <b><%=cv%></b></h2>
        <%
            }%>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" ></script>
    </body>
</html>
