/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ATMMachine;

import java.util.Scanner;

/**
 *
 * @author dell
 */
public class ATM 
{
    
    float Balance ;
    int PIN =1234;
    
    public void checkpin()
    {
        System.out.println("Enter Your Pin Number ");
        Scanner sc = new Scanner(System.in);
        int enteredpin =sc.nextInt();
        if(PIN==enteredpin)
        {
            menu();
        }
        else
        {
            System.out.println("Enter a Valid Pin");
            menu();
        }
                
    }
    public void menu()
    {
        System.out.println("Enter Your Choice");
        System.out.println("1 Check Account Balance");
        System.out.println("2 Withdraw Money");
        System.out.println("3 Deposite Money");
        System.out.println("4 EXIT");
        Scanner sc = new Scanner(System.in);
        int opt=sc.nextInt();
        if(opt==1)
        {
            checkBalance();
        }
        if(opt==2)
        {
            Withdrwal();
        }
        else if(opt==3)
        {
            Deposite();
        }
        else if(opt==4)
        {
          return;  
        }
        else
        {
            System.out.println("Enter a Valid Choice");
        }
    }
    public void checkBalance()
    {
        System.out.println("Balance "+Balance);
        menu();
    }
    public void Withdrwal()
    {
        System.out.println("Enter Amount to Withdrwal");
        Scanner sc = new Scanner(System.in);
        float amount = sc.nextFloat();
        if(amount >Balance)
        {
            System.out.println("Incufficent Balance");
        }
        else
        {
            Balance=Balance-amount;
            System.out.println("Money Withrwal Succecfully ");
            
        }
        menu();
    }
    public void Deposite()
    {
        System.out.println("Enter The Amount");
        Scanner sc = new Scanner(System.in);
        float amount = sc.nextFloat();
        Balance=Balance+amount;
        System.out.println("Money Withdrwal Succecfully");
        menu();
        
    }
}
