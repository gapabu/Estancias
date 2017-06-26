<%-- 
    Document   : error
    Created on : 26-jun-2017, 7:49:59
    Author     : Padilla_Bustamante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Inicio</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    
    <body>
        
        <header>
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
						<span class=""></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand">UNSIS</a>
				</div>
				<!-- Inicia Menu -->
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Inicio</a></li>
						<li><a href="#">Estancias</a></li>
						<li><a href="#">Servicio Social</a></li>
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

	<section class="jumbotron">
		<div class="container">
			<h1><img src="imagenes/UnsisLogo.png" alt="">   Universidad de la Sierra Sur</h1>
			<h2>Estancias Profesionales</h2>
		</div>
	</section>

	<section class="main container">
		<div class="row">
			<section class="posts col-md-9">
				<div class="miga-de-pan">
					<ol class="breadcrumb">
                                                <li class="active">Inicio</li>
						<li><a href="#">Estancias</a></li>
						<li><a href="#">Servicio Social</a></li>
						<li><a href="#">Contacto</a></li>
						
					</ol>
				</div>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						
					</a>
					<h2 class="post-title">
						<a href="#">Error</a>
					</h2>
					<p><span class="post-fecha">13 de junio de 2017</span></p>
					<p class="post-contenido text-justify">
						
					</p>
				</article>

				<nav>
				
			</section>

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
