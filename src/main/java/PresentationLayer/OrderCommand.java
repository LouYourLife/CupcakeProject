package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderHelper;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class OrderCommand extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        if (user==null){
            return "login";
        }

        String top = request.getParameter("top");
        String bot = request.getParameter("bot");
        if(top.equalsIgnoreCase("Choose...") || bot.equalsIgnoreCase("Choose...")){
            return "CartPage";
        }
        if(request.getParameter("amount").equalsIgnoreCase("")){
            return "CartPage";
        }
        int amount = Integer.parseInt(request.getParameter("amount"));

        if(amount < 1){
            return "CartPage";
        }
        int prices = OrderHelper.getPrices(request, response);
        int sum = prices * amount;

        Order order = new Order(user, top, bot, amount, sum);
        OrderMapper.makeOrder(order);

        ArrayList<Order> userOrders = OrderMapper.seeOrders2((String) session.getAttribute("email"));
        session.setAttribute("userOrders", userOrders);

        return "CartPage";

// Et array der sendes rundt og tjekker om man er i systemet, og sender tilbage hvis man ikke er logget ind
        // If, not logged in, send til log ind side

    }
}
