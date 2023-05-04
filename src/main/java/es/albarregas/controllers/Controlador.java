package es.albarregas.controllers;

import es.albarregas.beans.Operacion;
import es.albarregas.exceptions.DivisionPorCeroException;
import es.albarregas.models.Divisor;
import es.albarregas.models.Multiplicador;
import es.albarregas.models.Restador;
import es.albarregas.models.Sumador;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Date fecha = new Date();
        SimpleDateFormat formatoFecha = new SimpleDateFormat("EEEE, dd-mm-yyyy, HH:mm:ss");

        boolean error = false;
        String urlRedireccion = "";
        Operacion operacion = new Operacion();

        try {
            double operando1 = Double.parseDouble(request.getParameter("operando1"));
            double operando2 = Double.parseDouble(request.getParameter("operando2"));

            Enumeration<String> operaciones = request.getParameterNames();

            while (operaciones.hasMoreElements()) {
                String operac = operaciones.nextElement();

                switch (operac) {
                    case "sumar":
                        Sumador sumador = new Sumador();
                        operacion.setResultado(sumador.sumar(operando1, operando2));
                        operacion.setSigno("+");
                        break;
                    case "restar":
                        Restador restador = new Restador();
                        operacion.setResultado(restador.restar(operando1, operando2));
                        operacion.setSigno("-");
                        break;
                    case "multiplicar":
                        Multiplicador multiplicador = new Multiplicador();
                        operacion.setResultado(multiplicador.multiplicar(operando1, operando2));
                        operacion.setSigno("*");
                        break;
                    case "dividir":
                        Divisor divisor = new Divisor();
                        try {
                            operacion.setResultado(divisor.dividir(operando1, operando2));
                            operacion.setSigno("/");
                        } catch (DivisionPorCeroException e) {
                            error = true;
                            request.setAttribute("error", "Se está intentando dividir por cero");
                            urlRedireccion = "JSP/error.jsp";
                        }
                        break;
                }
            }

            if (!error) {
                operacion.setOperando1(operando1);
                operacion.setOperando2(operando2);

                request.setAttribute("fecha", formatoFecha.format(fecha));
                request.setAttribute("calculo", operacion);

                urlRedireccion = "JSP/resultado.jsp";
            }
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Alguno de los operandos no es un número válido");
            urlRedireccion = "JSP/error.jsp";
        }

        request.getRequestDispatcher(urlRedireccion).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }

}
