public with sharing class CustomerViewController
{
    public static List<Account> getAccounts()
    {
        return CustomerViewService.getAccounts();
    }
}
