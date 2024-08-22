/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author HP
 */
public class Account {
    private int id;
    private String userName;
    private String pass;
    private String fullName; 
    private String phone;
    private  String dob;
    private String avatar;
    private int RoleID;
    private int status;

    public Account() {
    }

    public Account(int id, String userName, String pass, String fullName, String phone, String dob, String avatar, int RoleID, int status) {
        this.id = id;
        this.userName = userName;
        this.pass = pass;
        this.fullName = fullName;
        this.phone = phone;
        this.dob = dob;
        this.avatar = avatar;
        this.RoleID = RoleID;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getRoleID() {
        return RoleID;
    }

    public void setRoleID(int RoleID) {
        this.RoleID = RoleID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", userName=" + userName + ", pass=" + pass + ", fullName=" + fullName + ", phone=" + phone + ", dob=" + dob + ", avatar=" + avatar + ", RoleID=" + RoleID + ", status=" + status + '}';
    }

    
}
