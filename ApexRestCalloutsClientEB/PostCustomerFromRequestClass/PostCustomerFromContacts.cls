public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.PostCustomerFromContacts(); 
    // request.setEndpoint() / setMethod() / setBody() / setHeader() 
    // SF -> Container -> JSON.serialize() -> Provider
	
	public static void PostCustomerFromContacts(){
        
        List<Contact> conList = [SELECT Id, FirstName, LastName, Phone, Email FROM Contact];
        
        List<CustomerRequest> customerList = new List<CustomerRequest>();
        
        for(Contact con : conList){
            
            CustomerRequest customer = new CustomerRequest();
                customer.firstName = con.FirstName;
                customer.lastName = con.LastName;
                customer.email = con.email;
                customer.phone= '5054459696';
                customer.gender = 'Male';
                customer.status = 'active';
                
                customerList.add(customer);            
        }
      
        //-------------------------------        
        
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