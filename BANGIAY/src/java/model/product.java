/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HP
 */
public class product {
    private int id;
    private double price;
    private double sale;
    private String nameP;
    private int quantity;
    private String brand;
    private String img;
    private String descriptions;
    private int cateid;

    public product() {
    }

    public product(int id, double price, double sale, String nameP, int quantity, String brand, String img, String descriptions, int cateid) {
        this.id = id;
        this.price = price;
        this.sale = sale;
        this.nameP = nameP;
        this.quantity = quantity;
        this.brand = brand;
        this.img = img;
        this.descriptions = descriptions;
        this.cateid = cateid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getSale() {
        return sale;
    }

    public void setSale(double sale) {
        this.sale = sale;
    }

    public String getNameP() {
        return nameP;
    }

    public void setNameP(String nameP) {
        this.nameP = nameP;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    @Override
    public String toString() {
        return "product{" + "id=" + id + ", price=" + price + ", sale=" + sale + ", nameP=" + nameP + ", quantity=" + quantity + ", brand=" + brand + ", img=" + img + ", descriptions=" + descriptions + ", cateid=" + cateid + '}';
    }

     
     

}