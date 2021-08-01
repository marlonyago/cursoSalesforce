/*************************************
* Class: SendRequest
* Test Class: SchedulableGit_Repositorie_Test
**************************************
* @author Marlon Yago
* @Date 03/10/2020
**************************************
*/
global class SchedulableGit_Repositorie implements Schedulable {
    
    global void execute(SchedulableContext ctx) {
		calloutGit();    
    }

	@future(callout=true)
    public static void calloutGit(){
        String endpoint = 'https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1';
        HttpResponse response = SendRequest.callout('GET', endpoint , null);
    	List<RepositoriesGit__c> repositories =  new List<RepositoriesGit__c>();
        
        if(response != null){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> items = (List<Object>) results.get('items');            
            if(items != null){
               repositories = GetItems(items); 
            }            
        }  
        
        if(repositories.size() > 0)
        	insert repositories;
    }
    
    public static List<RepositoriesGit__c> GetItems(List<Object> items){
        List<RepositoriesGit__c> repositories = new List<RepositoriesGit__c>();        
        for(Object i : items){
            Map<String, Object> item = (Map<String, Object>) i;            
            String jsonstring = JSON.serialize(item);            
            repositories.add(Repositorie(jsonstring));
        }  
        return repositories;
    }
    
    public static RepositoriesGit__c Repositorie(String jsonstring){
        try{
        	Git_Items git = Git_Items.parse(jsonstring);            
            RepositoriesGit__c repo = new RepositoriesGit__c();
            repo.BodyJson__c = jsonstring;
            repo.Forks__c = git.forks_count;
            repo.Name = git.name;
   			repo.Stars__c = git.stargazers_count;            
            repo.Repositorie__c = git.html_url;
            repo.Last_update__c = Datetime.valueOf(git.updated_at.substring(0,19).replace('T',' ')+':00');
            repo.Id_Git__c = git.id;
            repo.language__c = git.language;
            repo.Owner_login__c = git.Owner.login;
            repo.Owner_id__c = git.Owner.id;
            repo.Owner_node_id__c = git.Owner.node_id;
            repo.Owner_html_url__c = git.Owner.html_url;
            repo.User__c = '0054W00000AHldFQAT';
        	return repo;
        } catch (Exception ex) {
            System.debug('Exception Repositorie >> '+ex.getMessage());
            // We can use Sentry for examplo
        }
        return null;
    }
    
    

    
    
}