/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Storage {
    public String id;
    public String manufactured_date;
    public String imported_date;
    public String product_id;

    public Storage() {
    }

    public Storage(String id, String manufactured_date, String imported_date, String product_id) {
        this.id = id;
        this.manufactured_date = manufactured_date;
        this.imported_date = imported_date;
        this.product_id = product_id;
        
    }

    public String getManufactured_date() {
        return manufactured_date;
    }

    public void setManufactured_date(String manufactured_date) {
        this.manufactured_date = manufactured_date;
    }

    public String getImported_date() {
        return imported_date;
    }

    public void setImported_date(String imported_date) {
        this.imported_date = imported_date;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String quantity) {
        this.product_id = product_id;
    } 

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    

    
    
    
    
    
    
    
}
