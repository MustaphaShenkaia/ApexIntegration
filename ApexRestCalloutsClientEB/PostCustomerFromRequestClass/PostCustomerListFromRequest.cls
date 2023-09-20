public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.PostCustomersFromRequest(); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader() 
    // SF -> Container -> JSON.serialize() -> Provider
	
	public static void PostCustomersFromRequest(){
        
        List<CustomerRequest> customerList = new List<CustomerRequest>();
        
        CustomerRequest customer1 = new CustomerRequest();
            customer1.firstName ='Ava';
            customer1.lastName = 'Davis';
            customer1.email ='ava89@gmail.com';
            customer1.gender='Male';
            customer1.phone='4567654567';
            customer1.status='active';
        
        CustomerRequest customer2 = new CustomerRequest();
            customer2.firstName ='Harper';
            customer2.lastName = 'White';
            customer2.email ='harper79@gmail.com';
            customer2.gender='Male';
            customer2.phone='4567654567';
            customer2.status='active';
        
        customerList.add(customer1);
        customerList.add(customer2);
           
        //------------------------
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?token=' + TOKEN);
            request.setMethod('POST');
            request.setBody(JSON.serialize(customerList));
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}