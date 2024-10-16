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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
    </head>
    <body>
        <h1 class="text-center font-weight-bold">TRA CỨU ĐIỂM</h1>
        <form action="bai05.jsp" method="POST" class="text-center">
            Số báo danh: <input type="text" name="sobd" value="" />
            Họ tên: <input type="text" name="hoten" value="" />
            <button type="submit" class="bg-warning text-white border-0 font-weight-bold">
                <i class="fa-solid fa-magnifying-glass" style="color: #ffffff;"></i>Tra cứu</button>
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
        <table class="table table-bordered">           
            <tr>
                <th scope="col">Số báo danh</th>
                <th scope="col">Họ tên</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Toán</th>
                <th scope="col">Lý</th>
                <th scope="col">Hoá</th>
                <th scope="col">Tổng điểm</th>
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
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" ></script>
    </body>
</html>
