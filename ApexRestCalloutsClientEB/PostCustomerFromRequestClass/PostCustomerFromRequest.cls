public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.PostCustomerFromRequest(); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader() 
	
	public static void PostCustomerFromRequest(){
        
        CustomerRequest customer = new CustomerRequest();
        
        customer.firstName ='William';
        customer.lastName = 'Wilson';
        customer.email ='willim45@gmail.com';
        customer.gender='Male';
        customer.phone='4567654567';
        customer.status='active';
        
        //-----------------------------
        
        // SF -> Container -> JSON.serialize() -> Provider
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token=' + TOKEN);
            request.setMethod('POST');
            request.setBody(JSON.serialize(customer));
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
    
}