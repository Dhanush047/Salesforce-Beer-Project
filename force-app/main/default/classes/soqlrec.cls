public class soqlrec
{
    public static void meth()
    {
       List<Account> acclist = [SELECT name,phone,annualrevenue from Account WHERE name LIKE 'U%' and annualrevenue >50000];
       List <Contact> conlist = new List <Contact>();
       for(Account ac : acclist)
        {
            contact co = new contact(LastName = ac.Name,Phone = ac.Phone, AccountID = ac.Id);
            conlist.add(co);
        }
        insert conlist;
        List <Opportunity> oplist = new List <Opportunity>();
        for(Account accn : acclist)
        {
            Opportunity op = new Opportunity(Name = accn.Name,CloseDate = Date.today()+7,StageName = 'Prospecting',AccountID = accn.Id);
            oplist.add(op);
        }
        insert oplist;
    }

}