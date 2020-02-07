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
        <link href="css/theme/typography.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme/fonts.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/pages/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

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
                <div class="je-item">
                    <section class="section-container section-post">
                        <h1>Publicaciones</h1>
                    </section>
                </div>
                <div class="je-item">
                    <section>
                        <h1>Usuarios con muchos likes</h1>
                    </section>
                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus, tempora sequi labore amet quaerat ab corporis molestiae quos rerum laboriosam repudiandae quam cum maxime quae ducimus. Cupiditate excepturi nesciunt beatae.</span><span>Officiis, ab, odio, ipsam corporis consequuntur minus amet dolores sequi porro enim quam voluptatibus. Quo, natus, dicta, a, ipsam iste voluptatem eos tempora obcaecati totam temporibus officia corporis voluptate odio.</span></p>
                </div>
            </div>

        </main>

        <!--
            /post/15684/titulo
        -->
        <script src="js/pages/home/carrusel.js" type="text/javascript"></script>
    </body>
</html>
