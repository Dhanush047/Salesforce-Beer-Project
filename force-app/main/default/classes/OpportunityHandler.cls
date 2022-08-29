public class OpportunityHandler 
{
    public static void contactcreate(List<Opportunity> Opp)
    {
        List<Contact> con = new List<Contact>();
        for(Opportunity op : opp)
        {
            Contact c = new Contact();
            c.LastName = op.name;
            con.add(c);
        }
        insert con;
        
    }

}