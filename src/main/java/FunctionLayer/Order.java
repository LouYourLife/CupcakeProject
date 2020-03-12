package FunctionLayer;

public class Order {
    private int id;
    private User user;
    private String top;
    private String bot;
    private int amount;
    private int sum;

    public Order(User user, String top, String bot, int amount, int sum) {
        this.user = user;
        this.top = top;
        this.bot = bot;
        this.amount = amount;
        this.sum = sum;
    }
}
