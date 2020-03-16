package PresentationLayer;

import DBAccess.EmployeeMapper;
import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class SeeOrder extends Command {
    @Override
    String execute( HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        System.out.println(user);
        //request.setAttribute("user", user);
        //String email = request.getParameter("email");
        String email = (String) session.getAttribute("email");
        System.out.println(email);
        ArrayList<Order> userOrders = OrderMapper.seeOrders2(email);
        session.setAttribute("userOrders", userOrders);

        return "Cart" + "Page";
    }
}
