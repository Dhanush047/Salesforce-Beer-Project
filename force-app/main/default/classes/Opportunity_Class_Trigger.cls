public class Opportunity_Class_Trigger 
{
    public static void Opportunityclass(List<Opportunity> opp)
    {
        List<Account> aclist = new List<Account>();
        for(Opportunity o : opp)
        {
            Account ac = new Account();
            if(o.StageName == 'Closed Won')
            {
               ac.Rating = 'Hot';
               ac.Id = o.AccountId;
               aclist.add(ac);
            }
        }
        update aclist;
        
    }

}