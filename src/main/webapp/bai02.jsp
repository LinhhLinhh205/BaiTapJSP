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
    </head>
    <body>
        <h1>DIỆN TÍCH- CHU VI HÌNH CHỮ NHẬT</h1>
        <form action="bai02.jsp" method="POST">
            <table border="0">
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
            String dai=request.getParameter("dai");
            String rong=request.getParameter("rong");
            if(dai!=null&& rong!=null){
            double cd=Double.parseDouble(dai);
            double cr=Double.parseDouble(rong);
            Double dt=cd*cr;
            Double cv=(cd+cr)*2;           
            
        %>
        <br>
        Diện tích: <b> <%=dt%></b>
        <br>
        Chu vi: <b><%=cv%></b>
        <%
            }%>
    </body>
</html>
