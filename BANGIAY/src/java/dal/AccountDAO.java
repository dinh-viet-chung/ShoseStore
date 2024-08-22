/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.product;

/**
 *
 * @author HP
 */
public class AccountDAO extends DBcontext {
    
    PreparedStatement stm = null;
    ResultSet rs = null;//là bảng khi dùng select * from

    // account login
    public Account login(String userName, String pass) {
        String que = "select * from Account\n"
                + "where userName = ?\n"
                + "and pass = ?";
        try {
            stm = connection.prepareStatement(que);
            stm.setString(1, userName);
            stm.setString(2, pass);
            
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println("nothing");
        }
        return null;
    }

    //check account tồn tại
    public Account AccountExist(String userName) {
        String que = "select * from Account\n"
                + "where userName = ?\n";
        try {
            stm = connection.prepareStatement(que);
            stm.setString(1, userName);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8), rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // hàm đăng kí account
    public void signupAccount(String userName, String pass, String fullName, String phone, String dob, String avatar, int RoleID) {
        String query = "INSERT INTO Account (userName, pass, fullName, Phone, dob,avatar, RoleId,status) VALUES (?,?,?,?,?,?,?,1)";
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, userName);
            stm.setString(2, pass);
            stm.setString(3, fullName);
            stm.setString(4, phone);
            stm.setString(5, dob);
            stm.setString(6, avatar);
            stm.setInt(7, RoleID);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    // day tung account len profilejsp
    public Account getAccountByID(int id) {
        try {
            String strSelect = "select * from Account where id = ?";
            stm = connection.prepareStatement(strSelect);
            stm.setInt(1, id);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // - update ACCOUNT
    public void editProfile(String userName,
            String pass, String fullName, String Phone,
            String dob, String avatar, String id) {
        String query = "update Account set [userName] = ?,\n"
                + "pass = ?,\n"
                + "fullName =?,\n"
                + "Phone = ?,\n"
                + "dob = ?,\n"
                + "avatar = ?\n"
                + "where id =?";
        
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, userName);
            stm.setString(2, pass);
            stm.setString(3, fullName);
            stm.setString(4, Phone);
            stm.setString(5, dob);
            stm.setString(6, avatar);
//            stm.setInt(7, RoleId);
            stm.setString(7, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    // quản lý account 
    public List<Account> ManagerAccountID() {
        List<Account> list = new ArrayList<>();
        try {
            String strSelect = "select * from Account";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                Account em = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    // cách cho vào show and hide trên status account
//    public void notAllowAccount(String id) {
//        String query = "update Account set status =0 where id = ?";
//        try {
//            stm = connection.prepareStatement(query);
//            stm.setString(1, id);
//            stm.executeUpdate();
//        } catch (Exception e) {
//        }
//        
//    }
//    
//    public void AllowAccount(String id) {
//        String query = "update Account set status = 1 where id = ?";
//        try {
//            stm = connection.prepareStatement(query);
//            stm.setString(1, id);
//            stm.executeUpdate();
//        } catch (Exception e) {
//        }
//        
//    }
    
    public void editAccount(int status ,String id ) {
        String que = "update Account set [Status] = ? where id = ?";
        try {
            stm = connection.prepareStatement(que);
            stm.setInt(1, status);
            stm.setString(2, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    public static void main(String[] args) {
        // Assuming you have an instance of the class containing the ManagerAccountID method
        // and a valid database connection.
        AccountDAO da = new AccountDAO();
         da.editAccount(0 , "1");
      
        // Call the ManagerAccountID method to get the list of accounts
        List<Account> accountList = da.ManagerAccountID();
        //Account accList = da.AccountExist("Admin");
//        System.out.println(accList);
//        // Print the information of each account
//        for (Account account : accountList) {
//
//            // Add more fields as needed
//            System.out.println(account); // Separating accounts with an empty line
//        }
    }
}
