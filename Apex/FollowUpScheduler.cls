global class FollowUpScheduler implements Schedulable {
    global void execute(SchedulableContext sc){
        List<Task> tasks = new List<Task>();
        for(Lead l : [SELECT Id, OwnerId FROM Lead WHERE Status='Open - Not Contacted']){
            tasks.add(new Task(
                OwnerId = l.OwnerId,
                Subject = 'Follow up with Lead',
                WhatId = l.Id
            ));
        }
        insert tasks;
    }
}