trigger Account_Contact_update on Account (after update) 
{
    if(Trigger.isafter)
    {
        if(Trigger.isupdate)
        {
            AccountHelper.Updaterecord(Trigger.new);
        }
    }

}