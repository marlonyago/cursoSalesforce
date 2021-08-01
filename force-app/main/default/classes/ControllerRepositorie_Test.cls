@isTest
public with sharing class ControllerRepositorie_Test {
	@testSetup
    public static void setup() {
        List<RepositoriesGit__c> repositories = new List<RepositoriesGit__c>();
        for(Integer i = 1; 15 >= i; i++){          
            RepositoriesGit__c repo = new RepositoriesGit__c();
        	repo.BodyJson__c = '{"id": 22790488,"node_id": "MDEwOlJlcG9zaXRvcnkyMjc5MDQ4OA==",name": "java-design-patterns"}';
            repo.Forks__c = 5;
            repo.Name = 'Java Logic';
   			repo.Stars__c = 154;            
            repo.Repositorie__c = 'https://www.google.com';
            repo.Last_update__c = Datetime.now();
            repo.Id_Git__c = 4785;
            repo.language__c = 'Java';
            repo.Owner_login__c = 'MARLONYAGO';
            repo.Owner_id__c = 582346;
            repo.Owner_node_id__c = 'MDQ6VXNlcjU4MjM0Ng==';
            repo.Owner_html_url__c = 'https://www.google.com';        
            repositories.add(repo);       
        }
		insert repositories; 
        
    }
    
    @isTest
    public static void testController() {
        ControllerRepositorie.getRepositoriesGit();
        List<RepositoriesGit__c> repositories = [SELECT Id, Name , Stars__c, Forks__c, language__c FROM RepositoriesGit__c WHERE CreatedDate = TODAY];
        System.assertEquals(15, repositories.size());
    }
}