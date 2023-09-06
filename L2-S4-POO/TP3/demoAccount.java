public class demoAccount
{
    public static void main(String[] args)
    {
        Account account = new Account(1);
        
        account.deposit(100.0);
        account.withdraw(50);
    
        account.getBalance();
        account.getAccountNumber();
        account.print();
    }
}
