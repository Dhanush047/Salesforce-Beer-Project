public class CaseHandler 
{
    public static void casetrigger(List<Case> case1)
    {
        for(Case c : case1)
        {
            if(c.origin == 'email')
            {
                c.Status = 'Working';
                c.Priority = 'Medium';
            }
        }
    }

}