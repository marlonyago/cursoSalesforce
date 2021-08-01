/*************************************
* Class: SendRequest
* Test Class: SchedulableGit_Repositorie_Test
**************************************
* @author Marlon Yago
* @Date 03/10/2020
**************************************
*/
public without sharing class SendRequest {
    
	public static HttpResponse callout(String method, String endpoint, String body) {
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setMethod(method);
            request.setEndpoint(endpoint);
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
            if (body != null) request.setBody(body);
            HttpResponse response = http.send(request);
            
            if (isSuccess(response))
                return response;
                
			insertCalloutError(request, response, method, endpoint);
        } catch (Exception ex) {
            System.debug('Exception >> '+ex.getMessage());
        }
        return null;
    }
    
    public static boolean isSuccess(HttpResponse response) {
        return (response.getStatusCode() >= 200 && response.getStatusCode() <= 299);
    }
    
    public static void insertCalloutError(HttpRequest request, HttpResponse response, String method, String endpoint) {
        CalloutError__c failure = new CalloutError__c();
        failure.RequestDateTime__c = Datetime.now();
        failure.Endpoint__c = endpoint;
        failure.Method__c = method;
        if (request.getBody() != null) failure.RequestBody__c = request.getBody();
        if (response.getStatusCode() != null) failure.ResponseStatusCode__c = response.getStatusCode();
        if (response.getBody() != null) failure.ResponseBody__c = response.getBody();
        insert failure;
    }
    
}