<%-- 
    Document   : bai01
    Created on : Oct 15, 2024, 2:51:44 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài 01:Chương trình đầu tiên</title>
    </head>
    <body>
        <h1>CHƯƠNG TRÌNH ĐẦU TIÊN</h1>       
        <form action="bai01.jsp" method="POST">
            Hãy nhập họ tên: <input type="text" name="hoten" value="" />
            <input type="submit"  value="Thi hành" />
            <hr>
        </form>
        <%
            String ten = request.getParameter("hoten");
            if (ten != null) {
        %>
        Chào bạn: <b> <%=ten%></b>
        <%
            }%>
    </body>
</html>
