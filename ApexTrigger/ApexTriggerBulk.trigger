trigger {{ api_name }} on {{ object_name }} (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

	// Creates a new trigger handler for {{object_name}} using the trigger factory
    // See the {{object_name}}Handler class for trigger logic
    
    TriggerFactory.createHandler({{object_name.sObjectType}}); 

}