/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.time.LocalDate;
import model.Account;
import model.Cart;
import com.sun.jdi.connect.spi.Connection;
import java.security.interfaces.RSAKey;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Item;
import model.Orders;

/**
 *
 * @author HP
 */
public class OrderDAO extends DBcontext {

//    PreparedStatement stm = null;
//    ResultSet rs = null;//là bảng khi dùng select * from
    // chua dung
//    public void addOrder(Account u, Cart cart) {
//        LocalDate curDate = java.time.LocalDate.now();
//        String odate = curDate.toString();
//        try {
//            //add vao bang orders
//            String query1 = "insert into Orders values(?,?,?)";
//            stm = connection.prepareStatement(query1);
//            stm.setString(1, odate);
//            stm.setInt(2, u.getId());
//            stm.setDouble(3, cart.getTotalMoney());
//            stm.executeUpdate();
//            //lay ra id cua Orders vua add
//            String query2 = "select top 1 oid from Orders order by oid desc";
//            PreparedStatement st = connection.prepareStatement(query2);
//            ResultSet rs = st.executeQuery();
//            //add vao bang orderdetail
//            if (rs.next()) {
//                int Oid = rs.getInt(1);
//                for (Item i : cart.getItems()) {
//                    String query3 = "insert into Order_Detail values (?,?,?,?)";
//                    PreparedStatement st2 = connection.prepareStatement(query3);
//                    st2.setInt(1, Oid);
//                    st2.setInt(2, i.getProduct().getId());
//                    st2.setInt(3, i.getQuantity());
//                    st2.setDouble(4, i.getPrice());
//                    st2.executeUpdate();
//                }
//            }
//
//        } catch (Exception e) {
//        }
//    }
    public boolean insertOrders(String date, int idUser, double totalPrice, String phone, String address, String choose, String email) {

        String query = "INSERT INTO [dbo].[Orders]\n"
                + "           ([odate]\n"
                + "           ,[idUser]\n"
                + "           ,[totalPrice]\n"
                + "           ,[phone]\n"
                + "           ,[address]"
                + "           ,[choose]"
                + "           ,[email])\n"
                + "     VALUES\n"
                + "           ( ?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        int check = 0;
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, date);
            st.setInt(2, idUser);
            st.setDouble(3, totalPrice);
            st.setString(4, phone);
            st.setString(5, address);
            st.setString(6, choose);
            st.setString(7, email);
            check = st.executeUpdate();
        } catch (Exception e) {
        }
        return check > 0;
    }

    public static void main(String[] args) {
        OrderDAO ol = new OrderDAO();
//        Orders o = new Orders("2022-02-12", 1, 11.2, "0199191", "chunfff ");
//        Orders o1 = new Orders("2022-02-12", 1, 11.2, "0395200926", "vu văn trọng ");
//        Orders o3 = new Orders("2003-02-12", 3, 200.3, "0392349921", "SON ok");
//        boolean check = ol.insertOrders("2003-02-12", 3, 200.3, "0392349921", "SON ok");
//        if (check == true) {
//            System.out.println("ok");
//        } else {
//            System.out.println("fale");
//        }
    }
}
