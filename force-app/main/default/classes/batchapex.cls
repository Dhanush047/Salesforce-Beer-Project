public class batchapex implements Database.Batchable<Sobject>
{
    public Database.QueryLocator start(Database.BatchableContext con)
    { 
        return Database.getQueryLocator('Select name,Id from Account LIMIT 5');         
    }
    public void execute(Database.BatchableContext c, List<Account> acclist)
    {
        for(Account ac : acclist)
        {
            ac.name = ac.name + 'Batch';
        }
        update acclist;
    }
    public void finish(Database.BatchableContext c)
    {
        system.debug('BATCH OVER :)');
    }

}