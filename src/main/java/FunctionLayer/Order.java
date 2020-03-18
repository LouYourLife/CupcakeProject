package FunctionLayer;

public class Order {
    private int id;
    private User user;
    private String top;
    private String bot;
    private int amount;
    private int sum;
    private String username;

    public Order(User user, String top, String bot, int amount) {
        this.user = user;
        this.top = top;
        this.bot = bot;
        this.amount = amount;
    }


    //User dreng
    public Order(User user, String top, String bot, int amount, int sum) {
        this.user = user;
        this.top = top;
        this.bot = bot;
        this.amount = amount;
        this.sum = sum;
    }


    // Strings & ints
    public Order(String username, String top, String bot, int amount, int sum, int id) {
        this.username = username;
        this.top = top;
        this.bot = bot;
        this.amount = amount;
        this.sum = sum;
        this.id = id;
    }

    public int getId() { return id; }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTop() {
        return top;
    }

    public void setTop(String top) {
        this.top = top;
    }

    public String getBot() {
        return bot;
    }

    public void setBot(String bot) {
        this.bot = bot;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String toString() {
        /*return "Ordre " + getId() + " er bestilt af " + getUsername() + ". " + getAmount() + " cupcakes med " + getBot() + " bund og " +
                getTop() + " på toppen. Det bliver " + getSum() + " DKK i alt.";*/
        return "Ordre " + getId() + ": " + getUsername() + "\n" + "Cupcakes med " + getBot() + " og " + getTop() + ". Antal: " +
                getAmount() + "\n" + "Betal: " + getSum() + " DKK";
    }
}
