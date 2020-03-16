package PresentationLayer;

import DBAccess.OrderMapper;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 The purpose of Login is to...

 @author kasper
 */
public class Login extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        HttpSession session = request.getSession();

        /*if (session.getAttribute("user") != null){
            if (request.getParameter("top") != null && request.getParameter("bot") != null && request.getParameter("amount") != null){
                FunctionLayer.OrderHelper.makeOrder(request, response);
            }
            return "CartPage";
        }*/

        String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
        User user = LogicFacade.login( email, password );

        session.setAttribute( "user", user );
        session.setAttribute( "role", user.getRole() );
        session.setAttribute("email", email);  // ellers skal man skrive  user.email på jsp siderne og det er sgu lidt mærkeligt at man har adgang til private felter. Men måske er det meget fedt , jeg ved det ikke

        if (session.getAttribute("user") != null){
            if (request.getParameter("top") != null && request.getParameter("bot") != null && request.getParameter("amount") != null){
                FunctionLayer.OrderHelper.makeOrder(request, response);
            }
            return "CartPage";
        }

        if(user.getRole().equals("customer")){
            return "CartPage";
        }

        return user.getRole() + "page";
    }

}
