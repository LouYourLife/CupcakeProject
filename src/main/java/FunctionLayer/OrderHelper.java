package FunctionLayer;

import DBAccess.OrderMapper;
import PresentationLayer.Login;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

public class OrderHelper {

        public static Order makeOrder(HttpServletRequest request, HttpServletResponse response ){
            Order order = null;

            HttpSession session = request.getSession();

            User user = (User) session.getAttribute("user");
            String top = request.getParameter("top");
            String bot = request.getParameter("bot");
            int amount = Integer.parseInt(request.getParameter("amount"));
            int prices = OrderHelper.getPrices(request, response);
            int sum = prices * amount;

            order = new Order(user, top, bot, amount, sum);

            return order;
        }

        public static ArrayList<Order> getOrders( HttpServletRequest request, HttpServletResponse response ){
            HttpSession session = request.getSession();
            ArrayList<Order> list = null;

            try {
                list = OrderMapper.seeOrders((User) session.getAttribute("user"));
            } catch (LoginSampleException e) {
                e.printStackTrace();
            }
            session.setAttribute("orderList", list);

            return list;
        }
        public static int getPrices(HttpServletRequest request, HttpServletResponse response){
            ArrayList<Top> toppings = (ArrayList<Top>) request.getAttribute("toppings");
            ArrayList<Bot> bottoms = (ArrayList<Bot>) request.getAttribute("bottoms");
            String topname = request.getParameter("top");
            String botname = request.getParameter("bot");

            int prices = 0;
            for (Top top : toppings) {
                if (topname.equals(top.getName())) {
                    prices += top.getPrice();
                }
            }
            for (Bot bot : bottoms) {
                if (botname.equals(bot.getName())){
                    prices += bot.getPrice();
                }
            }

            return prices;
        }


}
