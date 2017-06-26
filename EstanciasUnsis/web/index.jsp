<%-- 
    Document   : index
    Created on : 08-jun-2017, 14:34:36
    Author     : Padilla_Bustamante
--%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Control de estancias</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
        <link rel="stylesheet" type="text/css" href="loginStyle.css" />
    </head>
    <body>
        <form name="login" action="index.jsp" method="POST">
            <input type="text" placeholder="&#9733;Usuario" name="txtusuario" value="" />
            <input type="password" placeholder="&#128272;Contraseña" name="txtpassword" value="" />
            <input type="submit" value="Ingresar" name="btnIngresar" />
            <input type="button" value="Ingresar como alumno" name="btnAlumno" /><br>
            <h2>
        <%
            ConexionBD con = new ConexionBD();
            if(request.getParameter("btnIngresar") != null){
                String nusuario = request.getParameter("txtusuario");
                String password = request.getParameter("txtpassword");
                
                HttpSession sesion = request.getSession();
                
                switch(con.loguear(nusuario, password)){
                    case 1:
                        sesion.setAttribute("user", nusuario);
                        sesion.setAttribute("nivel", "1");
                        response.sendRedirect("Principal.jsp");
                        break;
                    case 2:
                        sesion.setAttribute("user", nusuario);
                        sesion.setAttribute("nivel", "2");
                        response.sendRedirect("principalj.jsp");
                        break;
                        
                        default:
                            
                            out.write("Usuario ó contraseña inválida");
                            break;
                }
            }
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
            }
        %>
            </h2>
        </form>
    </body>
</html>
