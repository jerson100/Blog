<%-- 
    Document   : header
    Created on : 05/02/2020, 09:22:15 PM
    Author     : Jerson
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<header class="header-container">
    <div class="je-container">
        <div class="je-item container-logo">
            <div class="logo-inner">
                <img src="imgs/svg/logo.svg" alt="Logo de la página">
            </div>
        </div>
        <div class="je-item container-nav">
            <div class="nav-inner_toogle" id="toogle-nav">
                <img class="img-menu" src="imgs/svg/menu.svg">
            </div>
            <div class="nav-inner">
                <div class="nav">
                    <nav>
                        <h1 class="ocultar">Menú de navegación</h1>
                        <ul class="nav-list">
                            <li class="list-item"><a href="/">Inicio</a></li>
                            <li class="list-item"><a href="/categorias">Categorías</a></li>
                            <li class="list-item"><a href="/users/moderators">Moderadores</a></li>
                            <li class="list-item"><a href="/users">Usuarios</a></li>
                            <li class="list-item"><a href="/conoceme">Conóceme</a></li>
                        </ul> 
                    </nav>  
                </div>
                <div class="profile">
                    <a href="/">
                        <img class="img-user" src="imgs/jpg/yop.jpg" alt="Imagen de perfil del usuario que se logeo">
                    </a>
                    <img class="img-bottom-arrow" src="imgs/svg/flecha-hacia-abajo.svg" alt="icono de flecha hacia abajo">
                </div>
            </div> 
        </div>
    </div>
</header>