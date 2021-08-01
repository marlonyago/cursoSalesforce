({
	doInit : function(cmp, event, helper) {
		cmp.set('v.mycolumns', [            
            {label: 'Repository name', fieldName: 'linkName', type: 'url', typeAttributes: {label: { fieldName: 'Name' }, target: '_blank'}},            
            {label: 'Stars', fieldName: 'Stars__c', type: 'text'},
            {label: 'Forks', fieldName: 'Forks__c', type: 'text'},
            {label: 'Language', fieldName: 'language__c', type: 'text'}
            ]);        
        
        let action = cmp.get("c.getRepositoriesGit");
        action.setCallback(this, function(response){
            let state = response.getState();
            let records = response.getReturnValue();
            if (state === "SUCCESS") {                
                 records.forEach(function(record){
                    record.linkName = '/'+record.Id;
                })
                cmp.set("v.listGit", records);            
            }
        });
        $A.enqueueAction(action);
	},
    
})