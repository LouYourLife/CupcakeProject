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



        return "CartPage";
    }
}
