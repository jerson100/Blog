<%-- 
    Document   : login
    Created on : 10/02/2020, 06:17:02 PM
    Author     : Jerson
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="es">
    <head>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <meta name="autor" content="Jerson Ramírez Ortiz">
        <meta charset="UTF-8">
        <title>Login</title>
        <link href="css/base/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout/layout.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme/colors.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme/fonts.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
        <link href="css/theme/typography.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/pages/loginAndRegister/loginRegister.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/footer.css" rel="stylesheet" type="text/css"/>
        <link href="css/components/boton.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="includes/header.jsp"></jsp:include>
        <main class="main-container">
            <div class="je-container">
                <div class="je-item">
                    <div class="login-container">
                        <div class="login-menu lineImg">
                            <img src="imgs/svg/menu.svg" alt="">
                            <img src="imgs/svg/register02.svg" alt="">
                        </div>
                        <div class="login-img lineImg">
                            <img src="imgs/jpg/02.jpg" alt="imagen de portada, que muestra a los alumnos de la unjfsc">
                        </div>
                        <div class="login-data" id="login-data">
                            <div class="container-login" id="container-login">
                                <form id="login-form" class="form-login-register active">
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="username">
                                        <img src="imgs/svg/user02.svg" alt="Icono de username">
                                        <span>username</span>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="password">
                                        <img src="imgs/svg/key.svg" alt="Icono de clave de seguridad">
                                        <span>password</span>
                                    </div>
                                    <input class="je-btn dark-orange" type="submit" value="acceder">
                                </form>
                                <form id="register-form" class="form-login-register">
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="nombre">
                                        <img src="imgs/svg/user02.svg" alt="Icono de usuario">
                                        <span>nombre</span>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="apellidos">
                                        <img src="imgs/svg/user02.svg" alt="Icono de usuario">
                                        <span>apellidos</span>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="username">
                                        <img src="imgs/svg/user02.svg" alt="Icono de usuario">
                                        <span>username</span>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="email">
                                        <img src="imgs/svg/user02.svg" alt="Icono de email">
                                        <span>email</span>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" class="login-item" name="password">
                                        <img src="imgs/svg/key.svg" alt="Icono de clave de seguridad">
                                        <span>password</span>
                                    </div>
                                    <input class="je-btn dark-orange" type="submit" value="registrar">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="includes/footer.jsp"%>
        <script>
            ((window,document,undefined)=>{
                const items = Array.from(document.querySelectorAll("input[type='text']"));
                items.forEach(e=>{
                    e.addEventListener('focus',function(){
                        this.nextElementSibling.nextElementSibling.classList.add("form-item-focus");
                    });
                    e.addEventListener('blur',function(){
                       if(this.value === ''){
                          this.nextElementSibling.nextElementSibling.classList.remove("form-item-focus")
                       }
                   });
                });
                
                //para mostrar login o register
                const img_nav = Array.from(document.querySelectorAll(".login-menu img"));
                const forms = Array.from(document.querySelectorAll(".container-login form"));
                img_nav[0].addEventListener('click',function(){
                   forms[0].classList.add("active");
                   forms[1].classList.remove("active");
                });
                
                img_nav[1].addEventListener('click',function(){
                   forms[1].classList.add("active");
                   forms[0].classList.remove("active");
                });
                
            })(window,document);
        </script>
    </body>
    
</html>