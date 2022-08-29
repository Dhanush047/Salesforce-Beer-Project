public class queueableapex2 implements Queueable
{
    public void execute(QueueableContext con2)
        {
            delete[SELECT Id, Name FROM Employee__c WHERE name like 'D%'];
            system.debug('DELETED');
            system.enqueueJob(new queueableapex());
        }

}