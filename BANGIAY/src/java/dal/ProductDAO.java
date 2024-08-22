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

public class ProductDAO extends DBcontext {

    PreparedStatement stm = null;
    ResultSet rs = null;//là bảng khi dùng select * from
    List<product> list = new ArrayList<>();

    public List<product> getAll() {
        List<product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                product em = new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),rs.getInt(9));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }
    
      // sản phẩm mới nhất
    public product getLatest() {

        String query = "select top 1 * from Product\n"
                + "order by id desc";
        try {

            stm = connection.prepareStatement(query);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                return new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
      //lấy loại sp theo id , ấn cate loại nào thì gom sp loại đó
    public List<product> getProductByCid(String id) {
        List<product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product\n"
                    + "where cateID = ?";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, id);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                product em = new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),rs.getInt(9));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }
     // detail sản phẩm
    public product getProductByid(int id) {
        try {
            String strSelect = "select * from Product\n"
                    + "where id = ?";
            stm = connection.prepareStatement(strSelect);
            stm.setInt(1, id);
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                return new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),rs.getInt(9));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
     // tìm kiếm sp 
    public List<product> searchProductByName(String tSearch) {
        List<product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product\n"
                    + "where nameP like ?";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, "%" + tSearch + "%");
            rs = stm.executeQuery(); // trả về thì dùng 
            while (rs.next()) {
                product em = new product(rs.getInt(1), rs.getDouble(2),
                        rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),rs.getInt(9));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }
    
     // xóa sp
    public void deleteProduct(String pid) {
        String query = "delete from Product where id = ?";
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, pid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    // xoa sp trong gio hang 
     public product deleteProductCart(String pid) {
        String query = " delete from Orders where oid = ?";
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, pid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
        return null;
    }
    
        // edit product 
    public void editProduct(String price, String sale, String nameP, String quantity, String brand, String img, String descriptions, String category, String pid) {
        String query = "update Product set price =?,\n"
                + "sale =? ,\n"
                + "nameP = ?,\n"
                + "quantity = ?,\n"
                + "brand = ?,\n"
                + "img = ?,\n"
                + "descriptions = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            stm = connection.prepareStatement(query);
            // connect đi theo datqbase 
            stm.setString(1, price);
            stm.setString(2, sale);
            stm.setString(3, nameP);
            stm.setString(4, quantity);
            stm.setString(5, brand);
            stm.setString(6, img);
            stm.setString(7, descriptions);
            stm.setString(8, category);
            stm.setString(9, pid);
            stm.executeUpdate();
        } catch (Exception e) {
        }

    }
     // add product chi insert thooi 
    public void insertProduct(String price, String sale, String nameP, String quantity, String brand, String img, String descriptions, String category) {
        String query = "insert into Product\n"
                + "values (?,?,?,?,?,?,?,?)";
        try {
            stm = connection.prepareStatement(query);
            stm.setString(1, price);
            stm.setString(2, sale);
            stm.setString(3, nameP);
            stm.setString(4, quantity);
            stm.setString(5, brand);
            stm.setString(6, img);
            stm.setString(7, descriptions);
            stm.setString(8, category);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        ProductDAO objP = new ProductDAO();
        List<product> list = objP.getAll();
        objP.deleteProductCart("26");
    }
}