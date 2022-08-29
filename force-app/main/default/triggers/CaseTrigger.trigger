trigger CaseTrigger on Case (before insert) 
{
    if(Trigger.isinsert)
    {
        CaseHandler.casetrigger(Trigger.new);
    }

}