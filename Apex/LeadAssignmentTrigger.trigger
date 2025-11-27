trigger LeadAssignmentTrigger on Lead (before insert) {
    for (Lead l : Trigger.new) {
        if(l.Industry == 'Technology') {
            l.OwnerId = '005XXXXXXXXXXXX'; // Sample User Id
        }
    }
}