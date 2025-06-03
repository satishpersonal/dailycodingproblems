public class ContactTriggerHandler {
    public static void countNumberOfContacts(Map<Id,Contact> oldContactsMap, Map<Id,Contact> newContactsMap){
        Set<Id> accountIds = new Set<Id>();
        //OLD CONTACTS MAP IS EMPTY THEN IT IS A NEW CONTACT OR UNDELETED CONTACT
        //NEW CONTACTS MAP IS EMPTY THEN IT IS A DELETED CONTACT
        If(oldContactsMap == NULL || newContactsMap == NULL){
            List<Contact> contacts = oldContactsMap == NULL ? newContactsMap.values() : oldContactsMap.values();
            for (Contact con : contacts) {
                if (con.AccountId != null) {
                    accountIds.add(con.AccountId);
                }
            }
            //IF BOTH ARE NOT EMPTY THAT IS A UPDATE
        }else{
            for(Contact newCon : newContactsMap.values()) {
                Contact oldCon = oldContactsMap.get(newCon.Id);
                //CHECK FOR THE CHANGE OF ACCOUNTID BETWEEN OLD CONTACT & NEW CONTACT & ADD BOTH ACCOUNT IDS FOR RECALC
                if (oldCon.AccountId != newCon.AccountId) {
                    if (oldCon.AccountId != null) {
                        accountIds.add(oldCon.AccountId);
                    }
                    if (newCon.AccountId != null) {
                        accountIds.add(newCon.AccountId);
                    }
                }
            }
        }
        countContactByAccountIds(accountIds);
    }
    private static void countContactByAccountIds(Set<Id> accountIds){
        Map<String,Integer> accountAndContactCountMap = new Map<String,Integer>();
        List<Account> accounts = new List<Account>();
        List<AggregateResult> accountsWithContactsInfo = [SELECT Count(Id),AccountId From 
                                                          Contact WHERE AccountId IN:accountIds Group By AccountId];
        for(AggregateResult agr: accountsWithContactsInfo){
            If(String.isNotEmpty(String.valueOf(agr.get('AccountId'))) && String.isNotBlank(String.valueOf(agr.get('AccountId')))){
                accountAndContactCountMap.put(String.valueOf(agr.get('AccountId')), Integer.valueOf(String.valueOf(agr.get('expr0'))));
            }          
        } 
        for(Id accountId : accountIds){
            Account acc = new Account();
            acc.Id = accountId;
            acc.No_of_Contacts__c = accountAndContactCountMap.containsKey(accountId) ? accountAndContactCountMap.get(accountId) : 0;
            accounts.add(acc);
        }
        Database.update(accounts,false);
    }
}