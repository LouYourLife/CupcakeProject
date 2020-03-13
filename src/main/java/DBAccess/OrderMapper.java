package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import java.sql.*;

public class OrderMapper {


    public static void makeOrder(Order order) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO orders (user, top, bot, amount, sum) values (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, order.getUser().getEmail());
            ps.setString(2, order.getTop());
            ps.setString(3, order.getBot());
            ps.setInt(4, order.getAmount());
            ps.setInt(5, order.getSum());
            ps.execute();

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }
//    måske færdig
    public static void deleteOrder(Order order) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            //delete from cakeorders.users where user = '123@gmail.com';
            String SQL = "DELETE FROM cakeorders.orders WHERE id=?;";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setInt(1, order.getId());


            ps.execute();

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

    public static int getPrices(Order order) throws LoginSampleException {
        String top = order.getTop();
        String bot = order.getBot();
        int topprice = 0;
        int botprice = 0;
        int prices = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "Select topprice where top = ?";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, top);
            ps.execute();
            ResultSet rs = ps.executeQuery();
            topprice = rs.getInt("topprice");

            SQL = "Select botprice where bot = ?";
            ps = con.prepareStatement( SQL);
            ps.setString(1, bot);
            ps.execute();
            rs = ps.executeQuery();
            botprice = rs.getInt("botprice");

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
        prices = topprice + botprice;
        return prices;
    }


}
