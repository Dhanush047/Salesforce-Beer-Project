trigger contrigger on Contact (before insert) 
{
    for(Contact c : Trigger.new)
    {
        
        c.Email = c.FirstName + '@gmail.com';
        c.Phone = '+91 7904051857';
        c.Title = 'Mr.' + c.FirstName;
        c.Department = 'MCA';
    }
    system.debug(Trigger.new);
    system.debug(Trigger.new[0]);
    
}