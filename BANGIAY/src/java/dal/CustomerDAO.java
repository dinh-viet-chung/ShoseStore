/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Account;
import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class CustomerDAO extends DBcontext {

    PreparedStatement stm = null;
    ResultSet rs = null;//là bảng khi dùng select * from

    public Account getAccount(String userName, String pass) {
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
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7), rs.getInt(8),rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println("nothing");
        }
        return null;
    }
}
