trigger Opportunity_to_Account on Opportunity (after update) 
{
    if(Trigger.isupdate)
    {
        Opportunity_Class_Trigger.Opportunityclass(Trigger.new);
    }

}