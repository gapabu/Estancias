<%-- 
    Document   : Empresas
    Created on : 25-jun-2017, 23:09:49
    Author     : Padilla_Bustamante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Empresas</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    
    <body>
        
        <header>
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
						<span class="sr-only">Desplegar / Ocultar Menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand">UNSIS</a>
				</div>
				<!-- Inicia Menu -->
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav navbar-nav">
						<li><a href="Principal.jsp">Inicio</a></li>
						<li><a href="#">Estancias</a></li>
						<li><a href="#">Servicio Social</a></li>
                                                <li class="active"><a href="#">Empresas</a></li>
                                                <li><a href="#">Usuarios</a></li>
						<li><a href="#">Contacto</a></li>
                                                <li>
                                                <%
                                                    HttpSession sesion = request.getSession();
            
                                                    String nusuario;
                                                    String nivel;

                                                    if(sesion.getAttribute("user")!=null && sesion.getAttribute("nivel")!=null)
                                                    {
                                                        nusuario=sesion.getAttribute("user").toString();
                                                        nivel=sesion.getAttribute("nivel").toString();
                                                        out.print("<a href='index.jsp?cerrar=true'><h5>Cerrar sesión </h5></a>");
                                                    }
                                                    else 
                                                    {
                                                        out.print("<script>location.replace('index.jsp'); </script>");

                                                    }
                                                %>
                                                </li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
<%-- jumbotron para visualizar el logo y titulo de la univesidad --%>
	<section class="jumbotron">
		<div class="container">
			<h1><img src="imagenes/UnsisLogo.png" alt="">   Universidad de la Sierra Sur</h1>
			<h2>Estancias Profesionales</h2>
		</div>
	</section>
<%--Menu bar de la página --%>
	<section class="main container">
		<div class="row">
			<section class="posts col-md-9">
				<div class="miga-de-pan">
					<ol class="breadcrumb">
                                                <li><a href="#">Inicio</a></li>
						<li><a href="Principal.jsp">Estancias</a></li>
						<li><a href="#">Servicio Social</a></li>
                                                <li class="active">Empresas</li>
                                                <li><a href="#">Usuarios</a></li>
						<li><a href="#">Contacto</a></li>
						
					</ol>
				</div>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
					</a>
					<h2 class="post-title">
						<a href="#">Empresas</a>
					</h2>
                                    <p>
                                        Bienvenido usted puede agregar la información acerca las empresas en donde los alumnos de la Universidad de la Sierra Sur podrán realizar sus estancias profesionales. Elija la opción que desee. 
                                    </p>
				</article>

				<nav>
				<%--Fomulario para realizar las diferentes acciones de CRUD de empresas--%>
                                
                                <h1>Registro de empresa</h1>
                                <br><br>
                                <div class="help-block">Si ya existe la empresa y desea actualizar datos dar clic <a href="">Actualizar</a>
                                o eliminar datos de la empresa en <a href="">Eliminar.</a>
                                </div><br>
                                <form name="agregar" action="contactos" method="POST">
                                    <div class="form-group">
                                        <label for="txtNombre">Nombre o razón social:</label>
                                        <input class="from-control" type="text" name="txtNombre" value="" />
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="txtTelefono">Teléfono:</label>
                                        <input class="from-control" type="tel" name="txtTelefono" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtDireccion">Dirección:</label>
                                        <input class="from-control" type="text" name="txtDireccion" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="cbxClasificación">Clasificación:</label>
                                        <select class="from-control" name="cbxClasificacion">
                                            <option>Públicas</option>
                                            <option>Privadas</option>
                                            <option>A.C.</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="cbxGiro">Giro:</label>
                                        <select class="from-control" name="cbxGiro">
                                            <option>Ciencias Empresariales</option>
                                            <option>Administración pública</option>
                                            <option>Administración munucipal</option>
                                            <option>Informática</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <h2>Datos del contacto</h2>
                                    </div>
                                    <div class="help-block">
                                        Llene los datos del contacto de la empresa
                                    </div>
                                    <div class="form-group">
                                        <label for="txtNombreC">Nombre:</label>
                                        <input class="from-control" type="text" name="txtNombreC" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtApat">Apellido paterno:</label>
                                        <input class="from-control" type="text" name="txtApat" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtAmat">Apellido materno:</label>
                                        <input class="from-control" type="text" name="txtAmat" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtPuesto">Puesto:</label>
                                        <input class="from-control" type="text" name="txtPuesto" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtTelefono">Teléfono:</label>
                                        <input class="from-control" type="tel" name="txtTelefono" value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtEmail">Email:</label>
                                        <input class="from-control" type="email" name="txtEmail" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input class="btn btn-primary" type="submit" value="Guardar" name="btnConsultar" /><br>  
                                    </div>
                                </form>

                                <%-- Verifica acción --%>
                                <%
                                    String btnAg = request.getParameter("btnAgregar");
                                    String btnAc = request.getParameter("btnActualizar");
                                    String btnElimina = request.getParameter("btnEliminar");
                                    String btnConsulta = request.getParameter("btnConsultar");
                                    if(btnAg!=null){
                                %>
                                
                                
                                <%
                                    }
                                %>
			</section>
                        
                    
                    
                        <%--Crea los side bar de lado derecho --%>
			<aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Empresas</h4>
				<div class="list-group">
					<a href="#" class="list-group-item active">Agregar</a>
					<a href="#" class="list-group-item">Actualizar</a>
					<a href="#" class="list-group-item">Eliminar</a>
					<a href="#" class="list-group-item">Consultar empresas</a>
				</div>

			</aside>
                        <aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Estancias Profesionales</h4>
				<div class="list-group">
					<a href="#" class="list-group-item active">Introducción</a>
					<a href="#" class="list-group-item">Calendario</a>
					<a href="#" class="list-group-item">Requisitos</a>
					<a href="#" class="list-group-item">Directorio</a>
				</div>

			</aside>
                        <aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Servicio Social</h4>
				<div class="list-group">
					<a href="#" class="list-group-item active">Introducción</a>
					<a href="#" class="list-group-item">Calendario</a>
					<a href="#" class="list-group-item">Requisitos</a>
					<a href="#" class="list-group-item">Directorio</a>
				</div>

			</aside>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<p>Univesidad de la Sierra Sur</p>
				</div>
				<div class="col-xs-6">
					<ul class="list-inline text-right">
						<li><a href="#">Inicio</a></li>
						<li><a href="#">Estancias</a></li>
                                                <li><a href="#">Servicio Social</a></li>
						<li><a href="#">Contacto</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
</html>