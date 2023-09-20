public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.PostCustomerFromSR(); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader() 
    // 
    // Setup -> Custom Code -> Static Resources -> Customers.txt
	
	public static void PostCustomerFromSR(){
        
        StaticResource sr = [SELECT Id, body FROM StaticResource WHERE name ='Customers'];
        
        String payload = sr.body.toString();
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token=' + TOKEN);
            request.setMethod('POST');
            request.setBody(payload);
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
    
}