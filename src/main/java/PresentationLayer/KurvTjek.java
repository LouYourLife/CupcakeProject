package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class KurvTjek extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();



        if (session.getAttribute("user") != null){
            if(((User)session.getAttribute("user")).getRole().equalsIgnoreCase("employee")){
                return "employeepage";
            }
            return "CartPage";
        }

        return "login";
    }
}
