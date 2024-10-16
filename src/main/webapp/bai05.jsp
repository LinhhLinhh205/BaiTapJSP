<%-- 
    Document   : bai05
    Created on : Oct 16, 2024, 9:33:14 PM
    Author     : PC
--%>

<%@page import="my.common.DatabaseUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tra cứu điểm</title>
    </head>
    <body>
        <h1>TRA CỨU ĐIỂM</h1>
        <form action="bai05.jsp" method="POST">
            Số báo danh: <input type="text" name="sobd" value="" />
            Họ tên: <input type="text" name="hoten" value="" />
            <button type="submit">Tra cứu</button>
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String sobd = request.getParameter("sobd");
            String hoten = request.getParameter("hoten");

            if (sobd != null || hoten != null) {
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                try {
                    con = DatabaseUtil.getConnection();
                    if (sobd != null && !sobd.isEmpty()) {
                        ps = con.prepareStatement("select * from thisinh where sobd=?");
                        ps.setString(1, sobd);
                    } else if (hoten != null && !hoten.isEmpty()) {
                        ps = con.prepareStatement("select * from thisinh where hoten like ?");
                        ps.setString(1, "%" + hoten + "%");
                    }
                    if (ps != null) {
                        rs = ps.executeQuery();
        %>
        <table border="1">           
            <tr>
                <th>Số báo danh</th>
                <th>Họ tên</th>
                <th>Địa chỉ</th>
                <th>Toán</th>
                <th>Lý</th>
                <th>Hoá</th>
                <th>Tổng điểm</th>
            </tr>
            <%
                while (rs.next()) {
                    double tongdiem = rs.getFloat(4) + rs.getFloat(5) + rs.getFloat(6);

            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>  
                <td><%=tongdiem%></td>
            </tr>  
            <% }%> 
        </table>  
        <%
                    }
                } catch (Exception ex) {
                    out.println("ERROR: " + ex.toString());
                }
            }
        %>

    </body>
</html>
