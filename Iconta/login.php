<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login iConta</title>

    <!-- Custom fonts for this template-->
    <link rel="icon" href="admin/assets/img/logo.ico">
    <link href="admin/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="admin/assets/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/assets/css/main-L.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> 

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block "><img src="admin/assets/img/imgiConta.jpg" alt="" width="100%" /></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        </br>
                                        </br>

                                        <h1 class="h4 text-gray-900 mb-4">iConta</h1>
                                        <h1 class="h6 text-gray-900 mb-4">Bienvenido a iConta, inicie sus credenciales para poder continuar.</h1>
                                    </div>
                                    <form action="validar.php" METHOD="POST">
                                        <div class="form-group">
                                            <input type="text" name="user" class="form-control form-control-user" aria-describedby="emailHelp" spellcheck="false" 
                                            autocomplete="off" placeholder="Ingrese Usuario...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="pass" class="form-control form-control-user" placeholder="Ingrese Contraseña" required>
                                        </div>
                                        <hr>
                                        <div class="text-center">
                                            <input type="submit" class="botonlg" value="Aceptar" required>
                                        </div>
                                    </form>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="error">
        <span>
            <h5>Usuario o contraseña incorrecta, inténtelo de nuevo por favor </h5>
        </span>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="admin/assets/vendor/jquery/jquery.min.js"></script>
    <script src="admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="admin/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="admin/js/sb-admin-2.min.js"></script>

    <!--<script src="js/jquery-3.3.1.min.js"></script>-->

    <!--no main<script src="js/main.js"></script>-->

</body>

</html>