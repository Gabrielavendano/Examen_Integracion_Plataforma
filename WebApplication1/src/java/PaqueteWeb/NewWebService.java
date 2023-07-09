/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package PaqueteWeb;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author USUARIO
 */
@WebService(serviceName = "NewWebService")
public class NewWebService {
    /**
     * Web service operation
     */
    @WebMethod(operationName = "Login")
    public boolean Login(@WebParam(name = "usuario") String usuario, @WebParam(name = "contrasena") String contrasena) {
        //TODO write your implementation code here:
        if (usuario.equals("gabriel") && contrasena.equals("1234")){
            return true;
        }else{
        return false;}
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Producto")
    public boolean Producto(@WebParam(name = "categoria") String categoria, @WebParam(name = "precio") int precio) {
        //TODO write your implementation code here:
        return false;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ProcesarPago")
    public int ProcesarPago(@WebParam(name = "total") int total, @WebParam(name = "pago") int pago) {
        //TODO write your implementation code here:
        if (pago <= total){
            return pago-total;
        }else{
        return -1;}
    }
}
