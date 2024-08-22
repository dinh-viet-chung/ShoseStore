 
package dal;
//kết nối đến database
 import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DBcontext {
     protected Connection connection;
    public DBcontext()
    {
        try {
            String user = "chungdv";
            String pass = "1111";
            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=Hoang1";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        try {
            System.out.println(new DBcontext().connection);
        } catch (Exception e) {
        }
    }
}
