
package com.employee.Model;

import java.io.Serializable;


public class UserDao implements Serializable
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

    public void setFname(String fname) {
        this.fname = fname;
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

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }

    public UserDao(String name, String fname, String email, String password, String mobile) {
        this.name = name;
        this.fname = fname;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
    }
    public UserDao()
    {
        
    }
    String name,fname,email,password,mobile;
        int id;
    
}
