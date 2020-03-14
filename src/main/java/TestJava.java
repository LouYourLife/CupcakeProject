import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

public class TestJava {
    public static void main(String[] args) throws LoginSampleException {
      //  String username, String top, String bot, int amount, int sum, int id
        Order e = new Order("jens@somewhere.com","Crispy","Chocolate",7, 77, 1);

        System.out.println(OrderMapper.findID(e));
    }
}
