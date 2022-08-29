public class LeadHandler1 
{
    public static void leadtrigger(List<Lead> led)
    {
        for(Lead l : led)
        {
            if(l.LeadSource == 'Web')
            {
                l.Rating = 'Cold';
            }
            else
            {
                l.Rating = 'Hot';
            }
        }
    }

}