//Author: Vibeke

package PresentationLayer;

import DBAccess.EmployeeMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class EmpList extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        ArrayList<User> users = EmployeeMapper.getUser();
        ArrayList<Order> orders = EmployeeMapper.orderList();

        request.setAttribute("users", users);
        request.setAttribute("orders", orders);

        return "employee" + "list";
    }
}
