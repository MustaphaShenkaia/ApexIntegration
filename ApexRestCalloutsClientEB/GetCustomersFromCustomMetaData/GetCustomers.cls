public class CustomerAPI {
    
    public static  String token = TokenUtility.getTokenByLabel('ApiToken');
    
    // CustomerAPI.getCustomers(); 
    // request.setEndpoint() / setMethod() 
	
	public static void getCustomers(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customerList.php?token='+token);
            request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}