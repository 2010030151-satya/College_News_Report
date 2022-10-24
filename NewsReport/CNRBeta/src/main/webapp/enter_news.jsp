<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertNews" method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                <tr>
                    <td>Id </td>
                    <td><input type="number" name="id" /></td>
                </tr>
                <tr>
                    <td>headline </td>
                    <td>
                        <input type="text" name="headline">
                    </td>
                </tr>
                <tr>
                    <td>content</td>
                    <td>
                        <input type="text" name="content">
                    </td>
                </tr>
                <tr>
                    <td>file</td>
                    <td>
                        <input type="file" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form><br>
    <center><a href="viewAll.jsp">View All </a></center>
</body>
</html>

