public class DataApex {
    @AuraEnabled
    public static List<Beer_Order__c> getdatatable() 
    {
        List<Beer_Order__c> beerlist = [SELECT Name, Order_Amount__c, Id, Billing_City__c, Billing_State__c FROM Beer_Order__c];
        System.debug(beerlist);
        return beerlist;
        
    }
}