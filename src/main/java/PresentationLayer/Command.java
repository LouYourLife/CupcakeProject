package PresentationLayer;

import FunctionLayer.LoginSampleException;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put( "login", new Login() );
        commands.put( "register", new Register() );
        commands.put( "customerPay", new CustomerPay() );
        commands.put( "order", new OrderCommand());
        commands.put( "empList", new EmpList());
        commands.put( "employee", new Employee());
        commands.put( "loginpage", new LoginPage());
        commands.put( "seeOrders", new SeeOrder());
        commands.put("deleteOrder",new DeleteOrder());
        commands.put( "customer" ,new Customer());
        commands.put( "logout" ,new Logout());
        commands.put("adminDelete", new AdminDeleteOrder());
        commands.put("kurv", new KurvTjek());
    }

    static Command from( HttpServletRequest request ) {
        String TagetName = request.getParameter( "taget" );
        if ( commands == null ) {
            initCommands();
        }
        return commands.getOrDefault(TagetName, new UnknownCommand() );   // unknowncommand er default.
    }

    abstract String execute( HttpServletRequest request, HttpServletResponse response ) 
            throws LoginSampleException;

}
