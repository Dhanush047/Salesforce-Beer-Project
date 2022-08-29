public class leadhandler 
{
    public static void leadmethod(List<Lead> leadm)
    {
        for(Lead l : leadm)
        {
            if(l.LeadSource == 'Web')
                {
                    l.Description = 'Lead Created By Source ' +l.LeadSource;
                }
        }
    }

}