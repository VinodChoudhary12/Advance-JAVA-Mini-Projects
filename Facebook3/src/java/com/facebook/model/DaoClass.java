/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.facebook.model;
import java.io.Serializable;
/**
 *
 * @author user
 */
public class DaoClass implements Serializable{
    private String username,name,pass,email,dob,gender;
    public DaoClass(String username, String name, String pass, String email, String dob, String gender) {
        this.username = username;
        this.name = name;
        this.pass = pass;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
    }
   
    public DaoClass() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    

}
