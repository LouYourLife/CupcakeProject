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

public class DeleteOrder extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        //first draft
        User user = (User) session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("deleteIDU"));

        OrderMapper.deleteOrder(id,user.getEmail());

// Hvis useren på sessionen er den samme som den på orderen, så kan du godt delende est carthago AKA kan vi godt delete

     //  OrderMapper.deleteOrder(o);
        ArrayList<Order> userOrders = OrderMapper.seeOrders2((String) session.getAttribute("email"));
        session.setAttribute("userOrders", userOrders);
        return "CartPage";
    }
}
