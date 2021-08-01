/**
 * Created by Yago on 25/10/2019.
 * Test: ControllerRepositorie_Test
 */
public without sharing class ControllerRepositorie {
    
	@AuraEnabled
    public static List <RepositoriesGit__c> getRepositoriesGit() {
        List<RepositoriesGit__c> repositories = [SELECT Id, Name , Stars__c, Forks__c, language__c FROM RepositoriesGit__c WHERE CreatedDate = TODAY];        
        return repositories;
    }
    
}