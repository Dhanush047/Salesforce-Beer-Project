trigger LeadTrigger on Lead (before insert,before update,after insert) 
{
    if(Trigger.isBefore)
    { 
        If(Trigger.isInsert) 
        {
            /*system.debug(Trigger.new);
            system.debug(Trigger.newMap);
            leadhandler.leadmethod(Trigger.new); */
                        
        }
    


        Else if(Trigger.isUpdate)
            
        {
            
            system.debug(Trigger.new);
            system.debug('New' +Trigger.newMap);
            system.debug(Trigger.Old);            
            system.debug('Old' +Trigger.OldMap);
            
        }
        
        Else if(Trigger.isDelete)
            
        {
            
            // write the code for before delete
            
        }
        
        Else if(Trigger.isUndelete)
            
        {
            
            // write the code for before undelete
            
        }
        
    }
    
    Else if(Trigger.isAfter)
        
    {
        
        If(Trigger.isInsert)
            
        {
            
            system.debug(Trigger.newMap);
            
        }
        
        Else if(Trigger.isUpdate)
            
        {
            
            // write the code for after update
            
        }
        
        Else if(Trigger.isDelete)
            
        {
            
            // write the code for after delete
            
        }
        
        Else if(Trigger.isUndelete)
            
        {
            
            // write the code for after undelete
            
        }
        
    }

}