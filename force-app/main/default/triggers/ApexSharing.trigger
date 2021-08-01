/*************************************
* Class: SendRequest
* Test Class: SchedulableGit_Repositorie_Test
**************************************
* @author Marlon Yago
* @Date 03/10/2020
**************************************
*/
trigger ApexSharing on RepositoriesGit__c (after insert) {
    List<RepositoriesGit__Share> jobShares =  new List<RepositoriesGit__Share>();  
    
    if(trigger.isInsert){              
               
        for(RepositoriesGit__c repository : trigger.new){
            RepositoriesGit__Share user = new RepositoriesGit__Share();
            user.ParentId = repository.Id;
            user.UserOrGroupId = repository.User__c;
            user.AccessLevel = 'Edit';
            user.RowCause =Schema.RepositoriesGit__Share.RowCause.Share_Record_Whit_User__c;

            jobShares.add(user);
        }
       
        Database.SaveResult[] jobShareInsertResult = Database.insert(jobShares,false);
        
         Integer i=0;
        for(Database.SaveResult sr : jobShareInsertResult){
            if(!sr.isSuccess()){
                Database.Error err = sr.getErrors()[0];
                if(!(err.getStatusCode() == StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION &&  err.getMessage().contains('AccessLevel'))){
                   trigger.newMap.get(jobShares[i].ParentId).addError('Unable to grant sharing access due to following exception:'+ err.getMessage());      
                }
            }
            i++;
        }
        
    }
    
    
    
}