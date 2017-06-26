<%-- 
    Document   : Contacto
    Created on : 26-jun-2017, 9:43:27
    Author     : Padilla_Bustamante
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Contacto</title>
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
						<li ><a href="Principal.jsp">Inicio</a></li>
						<li><a href="#">Estancias</a></li>
                                                <li><a href="Empresas.jsp">Empresas</a></li>
                                                <li><a href="#">Usuarios</a></li>
						<li class="active"><a href="#">Contacto</a></li>
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
                                            <li><a href="Principal.jsp">Inicio</a></li>
                                                <li><a href="Empresas.jsp">Empresas</a></li>
                                                <li><a href="#">Usuarios</a></li>
						<li class="active"><a href="#">Contacto</a></li>
						
					</ol>
				</div>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						
					</a>
					<h2 class="post-title">
						<a href="#">Contacto</a>
					</h2>
					<p class="post-contenido text-justify">
						L.C.E. Yesenia Rojas Alcántara
                                        </p>
                                        <p class="post-contenido text-justify">
                                                Coordinación de Estancias Profesionales y Viajes de Práctica
                                                </p>
                                        <p class="post-contenido text-justify">        
                                            coordinacion.ep.unsis@gmail.com
                                            </p>
                                        <p class="post-contenido text-justify">
                                                Tel. 57 2 41 00 Ext. 202 / 203
					</p>
				</article>

				
				
			</section>

			<aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Estancias Profesionales</h4>
				<div class="list-group">
					<a href="#" class="list-group-item active">Introducción</a>
					<a href="#calendario" class="list-group-item">Calendario</a>
					<a href="#requisitos" class="list-group-item">Requisitos</a>
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
