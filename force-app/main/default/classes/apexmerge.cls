public class apexmerge 
{
    public static void main()
    {
        List<Account> acclist = [SELECT name FROM Account WHERE name LIKE 'Team%'];
        Account a = acclist[0];
        List<Account> mergelist = new List<Account>();
        mergelist.add(acclist[1]);
        mergelist.add(acclist[2]);
        merge a mergelist;
    }
    public static void main1()
    {
        List<Account> aclist = [SELECT name FROM Account WHERE name LIKE 'Team%' AND isDeleted = True ALL ROWS];
        undelete aclist;
    }

}