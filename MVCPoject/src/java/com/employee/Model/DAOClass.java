
package com.employee.Model;

import java.io.Serializable;


public class DAOClass  implements Serializable
{

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fame) {
        this.fname = fame;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public int getEmid() {
        return emid;
    }

    
    String name,fname,email,password,mobile;
    int emid;
    

    public DAOClass(String name, String fname, String email, String password, String mobile) 
    {
        this.name = name;
        this.fname = fname;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
    }
    public DAOClass()
    {
        
    }
}
