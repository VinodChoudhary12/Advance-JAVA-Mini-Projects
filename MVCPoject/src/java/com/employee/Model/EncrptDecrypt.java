
package com.employee.Model;

import java.util.Base64;


public class EncrptDecrypt 
{
    public static void main(String[] args) 
    {
        String password = "Password@1234";
        
        byte [] encrypt = Base64.getEncoder().encode(password.getBytes());
        System.out.println("Encypted Password is "+new String(encrypt));
        
        byte [] decypt = Base64.getDecoder().decode(encrypt);
        System.out.println("Descypt Password is "+new String(decypt));
        
    }
}
