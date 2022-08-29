trigger AccDeleteHandler on Account (before delete) 
{
    if(Trigger.isDelete)
        
    {
        AccDeleteTrigger.Deleterecord(Trigger.oldMap);        
    }
    
}