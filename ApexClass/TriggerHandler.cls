public with sharing class {{api_name}} implements ITrigger {
    
    /**
     * Map of new {{object_name}} objects where Id is the key and the object is the value
     * @type map<String, {{object_name}}>
     */
    private map<String, {{object_name}}> newMap = new Map<String, {{object_name}}>();

    /**
     * Map of old {{object_name}} where Id is the key and object is the value
     * @type map<String, {{object_name}}>
     */
    private map<String, {{object_name}}> oldMap = new Map<String, {{object_name}}>();
    
    /**
     * Iterates over Trigger.New if it is not null and puts new {{object_name}} objects in the newMap map.
     * Iterates over Trigger.Old if it is not null and puts {{object_name}} objects in the oldMap map.
     */
    public void prepareObjects(){
        if(trigger.new != null){
            for(sobject SO: trigger.new){
            {{object_name}} New{{object_name}} = ({{object_name}})SO;
            newMap.put(New{{object_name}}.id, New{{object_name}});
        }
        }
        
        if(trigger.old != null){
            for(sobject SO : Trigger.old){
                {{object_name}} Old{{object_name}} = ({{object_name}})SO;
                oldMap.put(Old{{object_name}}.id, Old{{object_name}});
            }
        }

    }
    
    
    /**
     * Performed before any of the trigger operations are run in a Before trigger.
     * Used for processing that needs to happen for all objects before the trigger logic begins.
     */
    public void bulkBefore(){
        
        prepareObjects();
        
    }
    
    /**
     * Performed before any of the trigger operations are run in an After trigger.
     * Used for processing that needs to happen for all objects in an After trigger
     * @return {[type]} [description]
     */
    public void bulkAfter(){
        
        prepareObjects();
          
        
    }
    
    /**
     * Logic for a Before Insert trigger
     * @param   so            {{object_name}} being inserted
     */
    public void beforeInsert(SObject so){
 
        {{object_name}} new{{object_name}} = ({{object_name}})SO;
        
    }
    
    /**
     * Logic for a Before Update trigger
     * @param   oldSo         Version of the {{object_name}} before the update was made
     * @param   so            Version of the {{object_name}} after the update was made
     */
    public void beforeUpdate(SObject oldSo, sObject so){

        {{object_name}} updated{{object_name}} = ({{object_name}})SO;
        

        {{object_name}} old{{object_name}} = ({{object_name}})oldSO;
        
        

    }
    
    /**
     * Logic for a Before Delete trigger
     * @param   so            {{object_name}} being deleted
     */
    public void beforeDelete(sObject so){
        {{object_name}} deleted{{object_name}} = ({{object_name}})SO;
    }
    
    /**
     * Logic for After Insert trigger
     * @param   so            {{object_name}} being inserted
     */
    public void afterInsert(SObject so){
            {{object_name}} new{{object_name}} = ({{object_name}})SO;
        

    }
    
    /**
     * Logic for an After Update trigger
     * @param  oldSo         Version of the {{object_name}} before it was modified
     * @param   so            Updated version of {{object_name}}
     */
    public void afterUpdate(SObject oldSo, SObject so){
        
        {{object_name}} new{{object_name}} = ({{object_name}})SO;
        
       
        {{object_name}} old{{object_name}} = ({{object_name}})oldSO;

    }
    
    /**
     * Logic for an After Delete trigger
     * @param   so            {{object_name}} that was deleted
     */
    public void afterDelete(sObject so){
        {{object_name}} deleted{{object_name}} = ({{object_name}})SO;
    }
    
    /**
     * Logic that is run after all triggers have been completed
     */
    public void andFinally(){

    }
}