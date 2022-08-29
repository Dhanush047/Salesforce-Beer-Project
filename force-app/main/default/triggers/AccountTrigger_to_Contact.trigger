trigger AccountTrigger_to_Contact on Account (After insert) 
{
    if(Trigger.isinsert)
    {
        AcountClassHandler.accounttrigger(Trigger.new);
    }

}