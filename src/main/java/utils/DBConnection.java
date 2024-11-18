package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    
    // Singleton instance
    private static Connection connection;

    // Private constructor to prevent instantiation
    private DBConnection() {}

    // Public method to provide access to the single instance
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null || connection.isClosed()) {  // Lazy initialization
            synchronized (DBConnection.class) {
                if (connection == null || connection.isClosed()) {
                    String username = "root";
                    String password = "--PW--";
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sp?characterEncoding=UTF-8", username, password);
                }
            }
        }
        return connection;
    }
}
