package DBAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 The purpose of Connector is to...

 @author kasper
 */
public class Connector {

    private static final String URL = "jdbc:mysql://localhost:3306/cakeorders?serverTimezone=CET&useSSL=false";
    private static final String USERNAME = "root";
<<<<<<< HEAD
    private static final String PASSWORD = "1234";
=======
    private static final String PASSWORD = "cph39178";
>>>>>>> 80d35e8f19b18b30820720b1be84950f8d0d4dee


    private static Connection singleton;

    public static void setConnection( Connection con ) {
        singleton = con;
    }

    public static Connection connection() throws ClassNotFoundException, SQLException {
        if ( singleton == null ) {
            Class.forName( "com.mysql.cj.jdbc.Driver" );
            singleton = DriverManager.getConnection( URL, USERNAME, PASSWORD );
        }
        return singleton;
    }

}
