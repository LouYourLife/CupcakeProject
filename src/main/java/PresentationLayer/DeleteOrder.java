package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteOrder extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        //first draft
        User user = (User) session.getAttribute("user");
        String top = request.getParameter("top");
        String bot = request.getParameter("bot");

        int amount = Integer.parseInt(request.getParameter("amount"));
        int prices = OrderMapper.getPrices(top, bot);
        int sum = prices * amount;

        int id =OrderMapper.findID(user.getEmail(), top);
        Order o = new Order(user.getEmail(),  top,  bot,  amount,  sum,  id);


        OrderMapper.deleteOrder(o);

        return "CartPage";
    }
}
