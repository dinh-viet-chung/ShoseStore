package dal;

import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import java.util.List;
import model.Account;
import model.product;
import model.Category;
import model.Orders;

public class DAO extends DBcontext {

    PreparedStatement stm = null;
    ResultSet rs = null;//là bảng khi dùng select * from
    List<product> list = new ArrayList<>();

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        try {
            String strSelect = "select * from category";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                Category em = new Category(rs.getInt(1), rs.getString(2));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    //get danh sách pro by id user 
    public ArrayList<product> getListByUser(String idUser) {
        ArrayList<product> list = new ArrayList<>();
        String query = "select p.* from Orders o join Account a\n"
                + "on o.idUser = a.id\n"
                + "join Order_Detail d on o.oid = d.Oid\n"
                + "join Product p on d.Oid = p.id\n"
                + "where a.id = ?";
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, idUser);
            while (rs.next()) {
                list.add(new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    //test ket noi DB
//    public static void main(String[] args) {
//        DAO objP = new DAO();
//      
//        List<Category> lista = objP.getAllCategory();
//        List<product> lis = objP.getProductByCid("1");
//
//        product o = objP.getLatest();
//        product e = objP.getProductByid("1");
//
//        Account a = objP.login("seller1", "123456");
//        Account b = objP.getAccountByID(1);
//        System.out.println(b);
////        for (Category object : lista) {
////            System.out.println(object);
////        }
////        for (product c : list) {
////            System.out.println(c);
////
////        }
    //}
    public Account getAcc(int id) {
        String query = "select * from Account where Account.id = ?";
        try {
            stm = connection.prepareStatement(query);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8), rs.getInt(9));

            }
        } catch (Exception e) {
        }
        return null;
    }

    // đếm số lượng sản phẩm db 
    public int getTotalAccount() {
        String query = "select count(*) from Product";
        try {
            stm = connection.prepareStatement(query);
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    //chuyền số 1 từ jsp về , chuyền vào 1 index
    public List<product> paginProduct(int index) {
        List<product> list = new ArrayList<>();
        String que = "select * from Product order by id\n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY;";
        try {
            stm = connection.prepareStatement(que);
            stm.setInt(1, (index-1)*6);
            rs = stm.executeQuery();
            while (rs.next()) {                
                list.add(new product(rs.getInt(1), 
                        rs.getDouble(2),
                        rs.getDouble(3), 
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7), 
                        rs.getString(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO da = new DAO();
        //Account a = da.getAcc(1);
        //  System.out.println(a);
        int c = da.getTotalAccount();
        System.out.println(c);
        // nhấn vào trang số mấy
                List<product> list = da.paginProduct(4);
        for (product o : list) {
            System.out.println(o);
        }
        
    }
}
