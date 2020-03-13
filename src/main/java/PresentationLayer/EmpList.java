//Author: Vibeke

package PresentationLayer;

import DBAccess.EmployeeMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class EmpList extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        ArrayList<User> users = EmployeeMapper.getUser();

        request.setAttribute("test", users);

        return "employee" + "list";
    }
}
