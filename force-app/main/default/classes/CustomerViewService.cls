public with sharing class CustomerViewService
{
    public static List<Account> getAccounts()
    {
        return AccountSelector.getAccounts().values();
    }

    public class CustomerViewDetails
    {
        public List<Opportunity> lOpportunities;
        public List<Contact> lContacts;
        public List<Case> lCases;
        public Integer closedWonOpps;
        public Decimal closedWonOppsAmount;
        public Integer totalContacts;
        public Integer openCases;

        public CustomerViewDetails(List<Opportunity> lOpportunities, List<Contact> lContacts, List<Case> lCases, Integer closedWonOpps,
                                Integer totalContacts, Integer openCases, Decimal closedWonOppsAmount)
        {
            this.lOpportunities = lOpportunities;
            this.lContacts = lContacts;
            this.lCases = lCases;
            this.closedWonOpps = closedWonOpps;
            this.totalContacts = totalContacts;
            this.openCases = openCases;
            this.closedWonOppsAmount = closedWonOppsAmount;
        }
    }
}

