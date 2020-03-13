//Author: Vibeke

package PresentationLayer;

import DBAccess.EmployeeMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class CustomerPay extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String pay = request.getParameter("pay");
        Double payD = Double.parseDouble(pay);
        //Double payD = Double.parseDouble("2.3");
        String userName = request.getParameter("user");

        EmployeeMapper.addAmount(payD, userName);

        request.setAttribute("addAmMes", "Bruger " + userName + " skal nu betale " + pay);

        return "employee" + "page";
    }
}
