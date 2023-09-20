public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.getCustomers(); 
    // request.setEndpoint() / setMethod() 
    // Update olması için Id gerekir. 
	
	public static void getCustomers(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customerList.php?token=' + TOKEN);
            request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}