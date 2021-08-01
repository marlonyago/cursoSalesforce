public class ClasseSharing {

    public static void OnAfterObjectInsert(RepositoriesGit__c repository) {        
            RepositoriesGit__Share user = new RepositoriesGit__Share();
            user.ParentId = repository.Id;
            user.UserOrGroupId = repository.User__c;
            user.AccessLevel = 'Edit';
            Database.SaveResult jobShareInsertResult = Database.insert(user,false);
        
        if(!jobShareInsertResult.isSuccess()){
            Database.Error err = jobShareInsertResult.getErrors()[0];
            if(!(err.getStatusCode() == StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION &&  err.getMessage().contains('AccessLevel'))){
                err.getMessage();
                
            }
        
        }
    }
    
    
}