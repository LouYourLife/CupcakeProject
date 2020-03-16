package DBAccess;

import FunctionLayer.*;

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
    public static int findID(String username,String top) throws LoginSampleException {
        try {
            int id = 0;
            Connection con = Connector.connection();
            //select id from cakeorders.orders WHERE user = "jens@somewhere.com" and top= "Crispy";
            String SQL = "select id from cakeorders.orders WHERE user = ? and top =?;";
            PreparedStatement ps = con.prepareStatement( SQL);
            //ps.setInt(2, order.getAmount());
            //skal muligvis være mere specificeret
            ps.setString(1, username);
            ps.setString(2,top);
            ps.execute();

            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                id = rs.getInt("id");
            }

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
            //Connection con2 = Connector.connection();
            String SQL = "Select topprice from toppings where top = ?";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, top);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                topprice = rs.getInt("topprice");
            }

            botprice = getBotPrices(bot);

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
        prices = topprice + botprice;
        return prices;
    }

    public static int getBotPrices(String bot) throws LoginSampleException {
        int botprice = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "Select topprice from bottoms where bot = ?";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString(1, bot);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                botprice = rs.getInt("botprice");
            }

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
        return botprice;
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

    public static ArrayList<Bot> getBots() throws LoginSampleException {
        ArrayList<Bot> bottoms = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "Select * from bottoms";
            PreparedStatement ps = con.prepareStatement( SQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                String name = rs.getString("bot");
                int botprice = rs.getInt("botprice");
                Bot bot = new Bot(name, botprice);
                bottoms.add(bot);
            }

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }

        return bottoms;
    }
    public static ArrayList<Top> getTops() throws LoginSampleException {
        ArrayList<Top> toppings = new ArrayList<>();
        try {
            Connection con = Connector.connection();
            String SQL = "Select * from toppings";
            PreparedStatement ps = con.prepareStatement( SQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                String name = rs.getString("top");
                int topprice = rs.getInt("topprice");
                Top top = new Top(name, topprice);
                toppings.add(top);
            }

        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }

        return toppings;
    }

}
