<%-- 
    Document   : principalJ
    Created on : 09-jun-2017, 13:29:12
    Author     : Padilla_Bustamante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            HttpSession sesion = request.getSession();
            
                String nusuario;
                String nivel;
                
                if(sesion.getAttribute("user")!=null && sesion.getAttribute("nivel")!=null)
                {
                    nusuario=sesion.getAttribute("user").toString();
                    nivel=sesion.getAttribute("nivel").toString();
                    out.print("<a href='login.jsp?cerrar=true'><h5>Cerrar sesión"+ nusuario+ "</h5></a>");
                }
                else 
                {
                    out.print("<script> </script>");
            
                }
        %>
</html>
