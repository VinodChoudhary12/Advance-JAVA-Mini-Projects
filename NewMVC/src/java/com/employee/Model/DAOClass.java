
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

    public String getFame() {
        return fame;
    }

    public void setFame(String fame) {
        this.fame = fame;
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

    
    String name,fame,email,password,mobile;
    int emid;
    

    public DAOClass(String name, String fame, String email, String password, String mobile) 
    {
        this.name = name;
        this.fame = fame;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
    }
    
}
