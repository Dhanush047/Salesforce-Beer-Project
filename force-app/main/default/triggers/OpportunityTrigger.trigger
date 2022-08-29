trigger OpportunityTrigger on Opportunity (after insert) 
{
    if(Trigger.isinsert)
    {
        OpportunityHandler.contactcreate(Trigger.new);
    }

}