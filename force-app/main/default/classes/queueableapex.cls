public class queueableapex implements queueable
{
    public void execute(QueueableContext con)
    {
        undelete[SELECT Id, Name FROM Employee__c WHERE name like 'D%' AND isDeleted = true ALL ROWS];
        system.debug('UN DELETED');
    }
    
}