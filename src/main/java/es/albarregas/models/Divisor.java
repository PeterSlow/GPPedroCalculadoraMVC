package es.albarregas.models;

import es.albarregas.exceptions.DivisionPorCeroException;

/**
 * @author dcc_s
 */
public class Divisor {
    public double dividir(double dividendo, double divisor) throws DivisionPorCeroException {
        double resultado = 0;
        if (divisor != 0) {
           resultado = (dividendo / divisor);
        } else {
            // Si el divisor es 0 se llama a la excepción creada para ello
            throw new DivisionPorCeroException("Se intenta dividir por cero, no es posible");
        }
        return resultado;
    }
}
