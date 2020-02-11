<%-- 
    Document   : home
    Created on : 25/01/2020, 02:12:37 PM
    Author     : Jerson
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <meta name="autor" content="Jerson Ramírez Ortiz">
        <title>Inicio</title>
        <link href="css/base/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout/layout.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme/colors.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme/fonts.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
        <link href="css/theme/typography.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/pages/home.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/footer.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/boton.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <h1 class="ocultar">Inicio</h1>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            
            <section class="carrousel-container">
                <div class="carrousel-title">
                    <div class="je-container">
                        <div class="je-item">
                            <h2 class="carrousel_parrafo t4">Mejores publicaciones de la semana</h2>
                        </div>
                    </div>
                </div>
                <div class="carousel-inner">
                    <div class="je-container">
                        <div class="je-item">
                            <div class="carousel-data-container">
                                <div class="carousel-data_articles" id="carousel-data_articles">
                                    <article class="carrousel-item">
                                        <div class="article-post">
                                            <div class="carousel-item_details">
                                                <h1 class="title">Aquí programando una vida sin ella</h1>
                                                <p class="description">I´m programming</p>
                                                <ul class="tags">
                                                    <li class="tag-item t5">Paisaje</li>
                                                    <li class="tag-item t5">Vida</li>
                                                    <li class="tag-item t5">Animales</li>
                                                </ul>
                                                <div class="details-post">
                                                    <div class="post-autor">
                                                        <img class="autor-img" src="imgs/jpg/yop.jpg" alt="Jerson Ramírez Ortiz">
                                                        <span class="autor-name">Jerson100</span>
                                                    </div>
                                                    <div class="post-date">
                                                        <span class="post-date_year">Publicado el 30/06/2019</span>
                                                        <span class="post-date_hours">a las 8:25 pm</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item_img">
                                                <img src="imgs/jpg/02.jpg" alt=""> 
                                            </div>
                                        </div>
                                    </article>
                                    <article class="carrousel-item">
                                        <div class="article-post">
                                            <div class="carousel-item_details">
                                                <h1 class="title">Aquí programando una vida sin ella</h1>
                                                <p class="description">I´m programming</p>
                                                <ul class="tags">
                                                    <li class="tag-item t5">Paisaje</li>
                                                    <li class="tag-item t5">Vida</li>
                                                    <li class="tag-item t5">Animales</li>
                                                </ul>
                                                <div class="details-post">
                                                    <div class="post-autor">
                                                        <img class="autor-img" src="imgs/jpg/yop.jpg" alt="Jerson Ramírez Ortiz">
                                                        <span class="autor-name">Jerson100</span>
                                                    </div>
                                                    <div class="post-date">
                                                        <span class="post-date_year">Publicado el 30/06/2019</span>
                                                        <span class="post-date_hours">a las 8:25 pm</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item_img">
                                                <img src="imgs/jpg/e.jpg" alt=""> 
                                            </div>
                                        </div>
                                    </article>
                                    <article class="carrousel-item">
                                        <div class="article-post">
                                            <div class="carousel-item_details">
                                                <h1 class="title">Aquí programando una vida sin ella</h1>
                                                <p class="description">I´m programming</p>
                                                <ul class="tags">
                                                    <li class="tag-item t5">Paisaje</li>
                                                    <li class="tag-item t5">Vida</li>
                                                    <li class="tag-item t5">Animales</li>
                                                </ul>
                                                <div class="details-post">
                                                    <div class="post-autor">
                                                        <img class="autor-img" src="imgs/jpg/yop.jpg" alt="Jerson Ramírez Ortiz">
                                                        <span class="autor-name">Jerson100</span>
                                                    </div>
                                                    <div class="post-date">
                                                        <span class="post-date_year">Publicado el 30/06/2019</span>
                                                        <span class="post-date_hours">a las 8:25 pm</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item_img">
                                                <img src="imgs/jpg/03.jpg" alt=""> 
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="carousel-data_nav" id="carousel-data_nav">
                                    <div class="carousel-data_nav">
                                        <span class="nav-item current"></span>
                                        <span class="nav-item"></span>
                                        <span class="nav-item"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="carga" id="carga"></div>
                </div>
            </section>
            <main class="main-container">
                <div class="je-container">
                    <div class="main-inner">
                        <section class="section-container section-post">
                            <div class="je-item">
                                <h2 class="title">Publicaciones</h2>
                                <div class="send-container">
                                    <form id="form-post">
                                        <div class="send-inner">
                                            <img class="user-img" src="imgs/jpg/yop.jpg" alt="Jerson Ramírez Ortiz">
                                            <div class="send-title">
                                                <input type="text" name="titulo" placeholder="Ingrese el título">
                                            </div>
                                        </div>
                                        <div class="send-operations">
                                            <div class="tag-container" id="tag-container">
                                            </div>
                                            <div class="buttons-container">
                                                <img src="imgs/svg/img.svg" alt="subir imagen">
                                                <span class="circle-carga"></span>
                                                <span class="separation-buttons"></span>
                                                <img src="imgs/svg/anadir.svg" alt="">
                                                <img src="imgs/svg/enviar.svg"></img>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="posts-container">
                                <%
                                    String[] data = {"02.jpg", "c.jpg", "d.jpg", "f.jpg"};
                                    for (int i = 0; i < 4; i++) {%>
                                <article class="article-post">
                                    <div class="user-container"><img class="user-img" src="imgs/jpg/yop.jpg" alt=""></div>
                                    <div class="publication-container">
                                        <div class="publication-user">
                                            <p class="username t3">Jerson100</p>
                                            <div class="type-user">
                                                <img src="imgs/svg/rey.svg" alt="imagen del tipo de administrador" title="admin">
                                                <img src="imgs/svg/logo.svg" alt="" title="Creador">
                                            </div>
                                            <time>1h</time>
                                        </div>
                                        <div class="publication-title">
                                            <h1 class="normal mr-b5">Aquí posando para la foto...</h1>
                                            <p class="mr-b5">Descripción de la imageen, de manera más especifica...</p>
                                        </div>
                                        <div class="publication-img">
                                            <img src="imgs/jpg/<%=data[i]%>" alt="img">
                                        </div>
                                        <div class="publication-reactions">
                                            <div class="reactions-inner">
                                                <div class="comments">
                                                    <img src="imgs/svg/mensaje.svg" alt="">
                                                    <span class="count">50</span>
                                                </div>
                                                <div class="love">
                                                    <img src="imgs/svg/corazon.svg" alt="">
                                                    <span class="count">120</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pointer-publication">
                                        <img class="pointer-icon" src="imgs/svg/fijado3.svg" alt="icono de fijación">
                                        <span class="small p-fijada">Publicación fijada</span>
                                    </div>
                                </article>
                                <%}
                                %>
                            </div>
                        </div>
                    </section>
                    <section class="section-container section-aside">
                        <div class="je-item">
                            <div class="aside-inner">
                                <h2 class="center title t3">Usuarios con muchos likes</h2>
                                <ul class="list-top_seguidores">
                                    <li>
                                        <div class="row-user">
                                            <span class="position-number">1</span>
                                            <div class="position-user_img">
                                                <img src="imgs/jpg/yop.jpg" alt="jerson ramirez">
                                                <span class="username">Jerson 100</span>
                                            </div>
                                            <span class="count-follow">185</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row-user">
                                            <span class="position-number">1</span>
                                            <div class="position-user_img">
                                                <img src="imgs/jpg/yop.jpg" alt="jerson ramirez">
                                                <span class="username">Jerson 100</span>
                                            </div>
                                            <span class="count-follow">185</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row-user">
                                            <span class="position-number">1</span>
                                            <div class="position-user_img">
                                                <img src="imgs/jpg/yop.jpg" alt="jerson ramirez">
                                                <span class="username">Jerson 100</span>
                                            </div>
                                            <span class="count-follow">185</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row-user">
                                            <span class="position-number">1</span>
                                            <div class="position-user_img">
                                                <img src="imgs/jpg/yop.jpg" alt="jerson ramirez">
                                                <span class="username">Jerson 100</span>
                                            </div>
                                            <span class="count-follow">185</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row-user">
                                            <span class="position-number">1</span>
                                            <div class="position-user_img">
                                                <img src="imgs/jpg/yop.jpg" alt="jerson ramirez">
                                                <span class="username">Jerson 100</span>
                                            </div>
                                            <span class="count-follow">185</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </main>
        
        <%@include file="../includes/footer.jsp"%>

        <!--
            /post/15684/titulo
        -->
        <script src="js/pages/home/carrusel.js" type="text/javascript"></script>
    </body>
</html>
