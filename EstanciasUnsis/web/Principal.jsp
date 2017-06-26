<%-- 
    Document   : Principal
    Created on : 12-jun-2017, 8:26:12
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
                                                <li><a href="Empresas.jsp">Empresas</a></li>
                                                <li><a href="#">Usuarios</a></li>
						<li><a href="Contacto.jsp">Contacto</a></li>
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
                                                <li><a href="Empresas.jsp">Empresas</a></li>
                                                <li><a href="#">Usuarios</a></li>
						<li><a href="Contacto.jsp">Contacto</a></li>
						
					</ol>
				</div>

				<article class="post clearfix">
					<a href="#" name="intro" class="thumb pull-left">
						
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
						De acuerdo al artículo 92, del Capítulo II De la Estancia Profesional, del Título VI, del Reglamento de Alumnos de Licenciatura,
                                                la Estancia Profesional tiene lo siguientes objetivos:
					</p>
                                        <ul>
                                            <li>Fortalecer, desarrollar y consolidar la vinculación de los alumnos con el sector productivo municipal, estatal, nacional e internacional. </li>
                                            <li>Propiciar experiencias útiles para la futura integración del alumno en el ámbito laboral.</li>
                                            <li>Coadyuvar en la formación del alumno a través del desarrollo de habilidades y capacidades, para desempeñar cualquier tarea relacionada con su perfil de formación académica.</li>
                                            <li>Contribuir a la formación integral del alumno, a través de la combinación de conocimientos teóricos y prácticos adquiridos en la Universidad, complementados con actividades en los ámbitos laboral y profesional. </li>
                                        </ul>
                                        <p>
                                            Las Estancias Profesionales comprenden un total de 560 horas, dividido en dos periodos; 280 horas al finalizar el sexto semestre de la carrera y 280 horas al término del octavo semestre.
                                        </p>
                                        <p>
                                            Una vez concluidos los dos periodos que comprende la Estancia Profesional, se elaborará la constancia de Estancia Profesional, requisito indispensable para la obtención del título profesional.
                                        </p>
				</article>

				<article class="post clearfix">
					<a href="#" name="requisitos" class="thumb pull-left">
					</a>
					<h2 class="post-title">
						<a href="#">Documentación a entregar a la Coordinación de Estancias Profesionales</a>
					</h2>
					<p><span class="post-fecha">13 de junio de 2017</span></p>
					<p class="post-contenido text-justify">
						El Reglamento de Alumnos de Licenciatura dispone en su artículo 95, que al finalizar cada periodo de Estancias Profesionales, 
                                                el alumno deberá entregar en un plazo máximo de diez días hábiles, los siguientes documentos:
                                      
					</p>
                                        <ul>
                                            <li>Acuse de oficio de presentación por parte de la empresa receptora. </li>
                                            <li>Oficio de aceptación emitido por la empresa. </li>
                                            <li>Reportes semanales de las actividades realizadas. </li>
                                            <li>Evaluación final por parte de la empresa, en sobre cerrado con sello oficial. </li>
                                            <li>Oficio de terminación emitido por la empresa. </li>
                                            <li>Informe final con visto bueno de la Jefatura de Carrera correspondiente. </li>
                                        </ul>
                                        
				</article>

                            <article class="post clearfix">
					<a href="#" name="calendario" class="thumb pull-left">
					</a>
					<h2 class="post-title">
						<a href="#">Calendario</a>
					</h2>
					
                                <a href="imagenes/CALENDARIO DE ESTANCIAS PROFESIONALES 2017.pdf">Calendario de estacias profecionales</a>
				</article>

				<nav>
				
			</section>

			<aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Estancias Profesionales</h4>
				<div class="list-group">
					<a href="#intro" class="list-group-item active">Introducción</a>
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
