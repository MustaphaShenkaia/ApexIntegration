public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.patchCustomer(); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader()
    // Update olması için Id gerekir. 
	
 	public static void patchCustomer(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token=' + TOKEN);
            request.setMethod('PATCH');
            request.setBody('{"id": "315","firstName": "Lissa","lastName": "Will","email": "lissawill@gmail.com","phone": "5559876543","gender": "Female","status": "active"}');
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}