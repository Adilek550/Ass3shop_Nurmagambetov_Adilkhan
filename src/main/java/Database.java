import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Database implements UserRegister {
    public Connection getConnection()  {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connStr = "jdbc:mysql://localhost/ass3?serverTimezone=Europe/Moscow&useSSL=false";
            return DriverManager.getConnection(connStr, "adilkhan", "root");
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public void addUser(User user) {
        try {
            String sql = "INSERT INTO users( email, phone,  name,password) " +
                    "VALUES(?,?, ?,?)";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPhone());
            stmt.setString(3, user.getName());
            stmt.setString(4 ,user.getPassword() );
            stmt.execute();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }

    @Override
    public void update(User user) {
        try {
            String sql = "INSERT INTO users( email, phone,  name,password) " +
                    "VALUES(?,?, ?,?)";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPhone());
            stmt.setString(3, user.getName());
            stmt.setString(4 ,user.getPassword() );
            stmt.execute();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }

    @Override
    public boolean login(User user) {
        try {
            String sql = "select * from users where name=? and password=?";
            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, user.getName());
            stmt.setString(2,user.getPassword() );
            stmt.execute();
            if(stmt.execute()){
                return true;
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return false;
    }
}
