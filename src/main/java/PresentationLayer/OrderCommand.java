package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderHelper;
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
        int prices = OrderHelper.getPrices(request, response);           //OrderMapper.getPrices(top, bot);
        int sum = prices * amount;

        Order order = new Order(user, top, bot, amount, sum);
        OrderMapper.makeOrder(order);

        request.setAttribute("orderlist", OrderMapper.seeOrders(user));

        return "CartPage";
    }
}
