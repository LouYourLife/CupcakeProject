package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import java.sql.*;
import java.util.ArrayList;

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
            String SQL = "DELETE FROM orders WHERE id = ?;";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setInt(1, order.getId());
            ps.execute();

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }
    public static int findID(Order order) throws LoginSampleException {
        try {
            int id = 0;
            Connection con = Connector.connection();
            //delete from cakeorders.users where user = '123@gmail.com';
            String SQL = "select id from cakeorders.orders WHERE user = ?;";
            PreparedStatement ps = con.prepareStatement( SQL);

            //ps.setInt(2, order.getAmount());
            ps.setString(1, order.getUsername());
            ps.execute();
            ResultSet rs = ps.executeQuery();
            id = rs.getInt("id");
            return id;
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

    public static int getPrices(String top, String bot) throws LoginSampleException {
        int topprice = 0;
        int botprice = 0;
        int prices = 0;
        try {
            Connection con = Connector.connection();
            Connection con2 = Connector.connection();
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
            ResultSet rs2 = ps.executeQuery();
            botprice = rs2.getInt("botprice");

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
        prices = topprice + botprice;
        return prices;
    }

    public static ArrayList<Order> seeOrders(User user) throws LoginSampleException {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "Select * from orders where user = ?";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, user.getEmail());
            ps.execute();
            ResultSet rs = ps.executeQuery();
            while(rs.next()){

                String uzi = rs.getString("user");
                String top = rs.getString("top");
                String bot = rs.getString("bot");
                int amount = rs.getInt("amount");
                int sum = rs.getInt("sum");
                Order userOrder = new Order(user, top, bot, amount, sum);
                orderList.add(userOrder);
            }

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }

        return orderList;
    }


}
