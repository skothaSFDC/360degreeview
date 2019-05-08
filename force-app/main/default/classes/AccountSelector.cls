public inherited sharing class AccountSelector
{
    public static Map<Id, Account> getAccounts()
    {
        Id loggedInUser = UserInfo.getUserId();
        Map<Id, Account> mAccounts = new Map<Id, Account>([Select Id, Name, AnnualRevenue, Industry, Active__c from Account where OwnerId =: loggedInUser]);
        return mAccounts;
    }
}
