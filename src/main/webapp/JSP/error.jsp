<%@page import="es.albarregas.beans.Operacion"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../INC/metas.inc"%>
    <title>Calculadora MVC</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <header>
        <%@include file="../INC/cabecera.inc"%>
    </header>
    <main class="container mt-3">
        <section>
            <h2 class="mb-4">Operación realizada:</h2>
            <div class="row">
                <div class="col-md-6">
                    <p class="font-weight-bold">${calculo.operando1}</p>
                </div>
                <div class="col-md-6">
                    <p class="font-weight-bold">${calculo.operando2}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <p class="font-weight-bold">${calculo.signo}</p>
                </div>
                <div class="col-md-6">
                    <p class="font-weight-bold">= ${calculo.resultado}</p>
                </div>
            </div>
        </section>
        <section class="mt-5">
            <h4 class="mb-3">Fecha:</h4>
            <p>${fecha}</p>
        </section>
        <section class="mt-5">
            <form action="VueltaAEmpezar" method="post">
                <button type="submit" class="btn btn-primary" name="volverAEmpezar">Volver a empezar</button>
            </form>
        </section>
    </main>
    <footer>
        <%@include file="../INC/pie.inc"%>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
