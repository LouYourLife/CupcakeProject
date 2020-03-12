package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import java.sql.*;

public class OrderMapper {


    public static void makeOrder(Order order) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO ";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, "placeholder");
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }


}
