<%@page import="es.albarregas.beans.Operacion"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../INC/metas.inc"%> 
    <title>Calculadora MVC</title>
</head>
<body> 
    <header>
        <%@include file="../INC/cabecera.inc"%>
    </header>
    <main>
        <section>
            <h2>Operación realizada:</h2>     
            <h3>${calculo.operando1} ${calculo.signo} ${calculo.operando2} = ${calculo.resultado}</h3>
        </section>
        <section>
            <h4>Fecha:</h4>
            <p>${fecha}</p>  
        </section>
        <section>
            <form action="VueltaAEmpezar" method="post"> 
                <button type="submit" class="btn btn-primary" name="volverAEmpezar">Volver a empezar</button>
            </form>
        </section>
    </main>
    <footer>
        <%@include file="../INC/pie.inc"%>  
    </footer>
</body>
</html>
