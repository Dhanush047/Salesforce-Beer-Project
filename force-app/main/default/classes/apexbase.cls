public class apexbase 
{
    public static void base()
    {
        List<Account> acclist = [SELECT name FROM account WHERE type = 'Customer - Direct' ORDER BY name ASC LIMIT 2];
    }

}