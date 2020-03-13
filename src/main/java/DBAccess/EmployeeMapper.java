//Author: Vibeke

package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import java.sql.*;
import java.util.ArrayList;

public class EmployeeMapper {

    public static ArrayList<User> getUser() throws LoginSampleException {
        ArrayList<User> userList = new ArrayList<>();

        try {
            Connection con = Connector.connection();
            String sql = "SELECT * FROM cakeorders.users where role = 'customer'";
            PreparedStatement ps = con.prepareStatement( sql );
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String email = rs.getString("user");
                String password = rs.getString("password");
                String role = rs.getString("role");
                User user = new User(email,password,role);
                userList.add(user);
            }
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }

        return userList;
    }

//  Som administrator kan jeg se alle ordrer i systemet, så jeg kan se hvad der er blevet bestilt.
    public static ArrayList<Order> orderList() throws LoginSampleException {
        ArrayList<Order> orders = new ArrayList<>();

        try {
            Connection connection = Connector.connection();
            String sql = "SELECT * FROM cakeorders.orders";
            PreparedStatement ps =connection.prepareStatement( sql );
            ResultSet rs =ps.executeQuery();
            while (rs.next()) {
                String username = rs.getString("user");
                String top = rs.getString("top");
                String bot = rs.getString("bot");
                int amount = rs.getInt("amount");
                int sum = rs.getInt("sum");
                int id = rs.getInt("id");
                Order order = new Order(username, top, bot, amount, sum, id);
                orders.add(order);
            }
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }

        return orders;
    }

/*Som administrator kan jeg indsætte beløb på en kundes konto direkte i MySql, så en kunde kan betale for sine ordrer.*/
    public static void addAmount(Double pay, String user) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE cakeorders.users SET Bank = ? where user = ?";
            PreparedStatement ps = con.prepareStatement( SQL );
            //Double pay2 = Double.valueOf(pay);
            //ps.setDouble(1, pay2);
            ps.setDouble(1, pay);
            ps.setString(2, user);
            ps.execute();
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

}
