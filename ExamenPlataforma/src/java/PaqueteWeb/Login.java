/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package PaqueteWeb;

/**
 *
 * @author USUARIO
 */
import java.util.Scanner;

public class Login {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Ingrese su nombre de usuario:");
        String username = scanner.nextLine();
        
        System.out.println("Ingrese su contraseña:");
        String password = scanner.nextLine();
        
        if (username.equals("admin") && password.equals("12345")) {
            System.out.println("Inicio de sesión exitoso");
        } else {
            System.out.println("Nombre de usuario o contraseña incorrectos");
        }
    }
}