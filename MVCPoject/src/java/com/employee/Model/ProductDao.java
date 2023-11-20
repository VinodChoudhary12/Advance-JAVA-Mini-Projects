/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.employee.Model;

import java.io.Serializable;




public class ProductDao implements Serializable
{
     
    
    
    
    public int getPid() {
        return pid;
    }

    public ProductDao(String pname, String pdescription, String pcategory, String pdate, float pprice) {
        this.pname = pname;
        this.pdescription = pdescription;
        this.pcategory = pcategory;
        this.pdate = pdate; 
        this.pprice = pprice;
    }

   public ProductDao()
   {
       
   }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPdescription() {
        return pdescription;
    }

    public void setPdescription(String pdescription) {
        this.pdescription = pdescription;
    }

    public String getPcategory() {
        return pcategory;
    }
    public void setId(int pid)
    {
        this.pid=pid;
    }

    public void setPcategory(String pcategory) {
        this.pcategory = pcategory;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public float getPprice() {
        return pprice;
    }

    public void setPprice(float pprice) {
        this.pprice = pprice;
    }
    int pid;
    float pprice;
    String pname,pdescription,pcategory,pdate;
}
