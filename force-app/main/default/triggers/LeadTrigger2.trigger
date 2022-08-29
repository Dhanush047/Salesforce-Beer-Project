trigger LeadTrigger2 on Lead (before insert)
{
    if(Trigger.isinsert)
    {
        LeadHandler1.leadtrigger(Trigger.new);
    }
        

}