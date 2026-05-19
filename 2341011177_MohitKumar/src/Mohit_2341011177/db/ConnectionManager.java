package mohitkumar_2341011177.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
    public static final String DB_URL = "jdbc:derby:libraryDB;create=true";

    private ConnectionManager() {
    }

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
        } catch (ClassNotFoundException e) {
            System.err.println("Derby driver not found: " + e.getMessage());
        }
        return DriverManager.getConnection(DB_URL);
    }

    public static void shutdownDatabase() {
        try {
            DriverManager.getConnection("jdbc:derby:libraryDB;shutdown=true");
        } catch (SQLException e) {
            if (!"08006".equals(e.getSQLState())) {
                System.err.println("Derby shutdown warning: " + e.getMessage());
            }
        }
    }
}
