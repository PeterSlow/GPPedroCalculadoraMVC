<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="INC/metas.inc"%> 
    <title>Calculadora MVC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .campo {
            margin-top: 10px;
        }
        .inputCampo {
            margin-top: 5px;
        }
        .boton {
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <%@include file="INC/cabecera.inc"%>
    <div class="container mt-5">
        <form class="row g-3" action="/GPPedroCalculadoraMVC/Controlador" method="post"> 
            <div class="col-auto">
                <label for="operando1" class="visually-hidden">Operando 1</label>
                <input type="text" id="operando1" name="operando1" class="form-control inputCampo" placeholder="Operando 1">
            </div>
            <div class="col-auto">
                <label for="operando2" class="visually-hidden">Operando 2</label>
                <input type="text" id="operando2" name="operando2" class="form-control inputCampo" placeholder="Operando 2">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3 boton" name="sumar">Sumar</button>
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3 boton" name="restar">Restar</button>
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3 boton" name="multiplicar">Multiplicar</button>
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-3 boton" name="dividir">Dividir</button>
            </div>
        </form>
    </div>
    <%@include file="INC/pie.inc"%>
</body>
</html>
