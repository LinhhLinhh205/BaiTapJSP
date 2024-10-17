<%-- 
    Document   : bai04
    Created on : Oct 15, 2024, 3:05:07 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đổi tiền</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
    </head>
    <body>
        <h1 class="text-center" >ĐỔI NGOẠI TỆ</h1>
        <form action="bai04.jsp" method="POST" class="container">
            <table class="table" >
                <tr>   
                    <td></td>
                    <td>Cho biết số tiền:</td>
                    <td><input style="width: 30rem" type="text" name="sotien" value="" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td>Chọn loại ngoại tệ: </td>
                    <td><select style="width: 30rem" name="loaingoaite">
                            <option value="1">USD</option>
                            <option value="2">GBP</option>
                            <option value="3">EUR</option>
                            <option value="4">JPY</option>
                            <option value="5">AUD</option>
                        </select></td>
                </tr>                
                <tr>
                    <td></td>
                    <td></td>
                    <td><input class="rounded border-info bg-info" type="submit" value="Đổi tiền" />
                        <input class="rounded border-info bg-info" type="reset"  value="Tiếp tục" />
                    </td>                   
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <hr>
            </table>
        </form>
        <%
            String loai = request.getParameter("loaingoaite");
            String sotien = request.getParameter("sotien");
            if (loai != null && sotien != null) {
                int loaingoaite = Integer.parseInt(loai);
                double tien = Double.parseDouble(sotien);
                double Tientra = 0;
                switch (loaingoaite) {
                    case 1:
                        Tientra = tien * 21380.00;
                        break;
                    case 2:
                        Tientra = tien * 32622.80;
                        break;
                    case 3:
                        Tientra = tien * 23555.67;
                    case 4:
                        Tientra = tien * 178.61;
                        break;
                    case 5:
                        Tientra = tien * 16727.44;
                        break;
                    default:
                        throw new AssertionError();
                }


        %>
        <h2 class="text-center">Số tiền đổi được: <%=Tientra%></h2>
        <%
            }%>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" ></script>
    </body>
</html>
