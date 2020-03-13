import DBAccess.OrderMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;

public class TestJava {
    public static void main(String[] args) throws LoginSampleException {
        User user=new User("ken@somewhere.com","kensen","customer");
        Order order = new Order(user,"Rasberry","Pistacio",26);
        OrderMapper.deleteOrder(order);
    }
}
