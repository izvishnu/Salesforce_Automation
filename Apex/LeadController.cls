public with sharing class LeadController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getLeads() {
        return [SELECT Id, Name, Status FROM Lead LIMIT 50];
    }
}