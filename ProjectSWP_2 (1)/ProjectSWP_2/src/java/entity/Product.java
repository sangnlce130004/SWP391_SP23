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
public class Product {

    private String id;
    private String name;
    private double price;
    private int amount;
    private String description;
    private String cate_id;
    private String image;
  

    public Product() {
    }
    
    
    public Product(String id, String name, double price, int amount, String description, String cate_id, String image) {
        super();
        this.id = id;
        this.name = name;
        this.price = price;
        this.amount = amount;
        this.description = description;
        this.cate_id = cate_id;
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCate_id() {
        return cate_id;
    }

    public void setCate_id(String cate_id) {
        this.cate_id = cate_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }    

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", amount=" + amount + ", description=" + description + ", cate_id=" + cate_id + ", image=" + image + '}';
    }
    
}
