<%-- 
    Document   : bai03
    Created on : Oct 15, 2024, 2:55:27 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài 03:Diện tích-Chu vi HT</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
    </head>
    <body>
        <h1 class="text-center">DIỆN TÍCH- CHU VI HÌNH TRÒN</h1>
        <form action="bai03.jsp" method="POST">
            <table class=" table container">
                <tr>
                    <td>Hãy nhập bán kính: </td>
                    <td><input type="text" name="bankinh" value="" /></td>
                </tr                
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
            String bankinh = request.getParameter("bankinh");
            if (bankinh != null) {
                double bk = Double.parseDouble(bankinh);
                Double dt = Math.PI * 2 * bk;
                Double cv = Math.PI * bk * bk;

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
