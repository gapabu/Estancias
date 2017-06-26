<%-- 
    Document   : AgregarEmpresa
    Created on : 25-jun-2017, 20:42:36
    Author     : Padilla_Bustamante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Agregar Empresa</title>
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
						<li class="active"><a href="#">Inicio</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Estancias <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Calendario #1</a></li>
								<li class="divider"></li>
								<li><a href="#">Categoria #2</a></li>
								<li><a href="#">Categoria #3</a></li>
								<li><a href="#">Categoria #4</a></li>
							</ul>
						</li>
						<li><a href="#">Servicio Social</a></li>
                                                <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Empresas <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Agregar #1</a></li>
								<li class="divider"></li>
								<li><a href="#">Actualizar #2</a></li>
								<li><a href="#">Eliminar #3</a></li>
								<li><a href="#">Ver empresas #4</a></li>
							</ul>
						</li>
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
                                                        out.print("<a href='index.jsp?cerrar=true'><h5>Cerrar sesión "+ nusuario + "</h5></a>");
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
						
					</ol>
				</div>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						
					</a>
					<h2 class="post-title">
						<a href="#">Introdución</a>
					</h2>
					<p><span class="post-fecha">13 de junio de 2017</span></p>
					<p class="post-contenido text-justify">
						La Universidad tiene la finalidad de formar profesionales capaces de afrontar retos y de proponer soluciones pertinentes,
                                                viables y factibles, acordes a la dinámica global y a la identidad multicultural del estado de Oaxaca.
                                                Las Estancias Profesionales vinculan a los alumnos con empresas e instituciones, que permitan fortalecer su aprendizaje, 
                                                para que puedan ser un motor capaz de transformar su medio local.
					</p>
				</article>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						
					</a>
					<h2 class="post-title">
						<a href="#">Objetivos de las Estancias Profesionales</a>
					</h2>
					<p><span class="post-fecha">13 de junio de 2017</span></p>
					<p class="post-contenido text-justify">
						De acuerdo al artículo 92, del Capítulo II De la Estancia Profesional, del Título VI, del Reglamento de Alumnos de Licenciatura, la Estancia Profesional tiene lo siguientes objetivos:
					</p>
				</article>

				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
					</a>
					<h2 class="post-title">
						<a href="#">Documentación a entregar a la Coordinación de Estancias Profesionales</a>
					</h2>
					<p><span class="post-fecha">13 de junio de 2017</span></p>
					<p class="post-contenido text-justify">
						El Reglamento de Alumnos de Licenciatura dispone en su artículo 95, que al finalizar cada periodo de Estancias Profesionales, 
                                                el alumno deberá entregar en un plazo máximo de diez días hábiles, los siguientes documentos:
                                                        •Acuse de oficio de presentación por parte de la empresa receptora.
                                                        •Oficio de aceptación emitido por la empresa.
                                                        •Reportes semanales de las actividades realizadas.
                                                        •Evaluación final por parte de la empresa, en sobre cerrado con sello oficial.
                                                        •Oficio de terminación emitido por la empresa.
                                                        •Informe final con visto bueno de la Jefatura de Carrera correspondiente.
					</p>
				</article>

				<nav>
				
			</section>

			<aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Estancias Profecionales</h4>
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
