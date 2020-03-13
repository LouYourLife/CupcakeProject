package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OrderCommand extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();


        User user = (User) session.getAttribute("user");
        String top = request.getParameter("top");
        String bot = request.getParameter("bot");
        int amount = Integer.parseInt(request.getParameter("amount"));
        Order order = new Order(user, top, bot, amount);

            int prices = OrderMapper.getPrices(order);
            int sum = prices * amount;
            order.setSum(sum);

        OrderMapper.makeOrder(order);

        return "indkøbskurv" + "page";
    }
}
