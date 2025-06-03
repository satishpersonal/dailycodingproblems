/**
 * @Author       : Satish Inuganti
 * @Description  : Apex Trigger to calculate the number of contacts linked to Account
 * @Ex:          : 
 * @Known Bugs   : NA
**/
trigger ContactTrigger on Contact (After insert,After update, After delete, After undelete) {
    If (Trigger.isInsert || Trigger.isUndelete) {
        ContactTriggerHandler.countNumberOfContacts(NULL, Trigger.newMap);
    }
    If (Trigger.isUpdate) {
        ContactTriggerHandler.countNumberOfContacts(Trigger.oldMap, Trigger.newMap);
    }
    If (Trigger.isDelete) {
        ContactTriggerHandler.countNumberOfContacts(Trigger.oldMap, NULL);
    } 
}