public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.patchCustomerById('315'); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader()
    // Update olması için Id gerekir. 
	
 	public static void patchCustomerById(String customerId){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token=' + TOKEN);
            request.setMethod('PATCH');
            request.setBody('{"id": " ' + customerId + ' ","firstName": "Lissanna","lastName": "Will","email": "lissawill@gmail.com","phone": "5559876543","gender": "Female","status": "active"}');
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}