public class SFDCCallout {
	public static SessionToken generateAccessToken() {

    	PageReference p=new PageReference('https://login.salesforce.com/services/oauth2/token');
    	p.getParameters().put('grant_type','password');
        p.getParameters().put('client_id','3MVG9d8..z.hDcPLnbffPzr4UqVnuhfSvpCc_fdmEwNPxDEDsv.iZ8UgDGEbAWLwuMcZIA6oGRnhKRWAIxIBy');
        p.getParameters().put('client_secret','6034675373507824350');
        p.getParameters().put('username','newtrustworthy@gmail.com');
        p.getParameters().put('password','Amit@19041989jlVMB9b5suIDF4SeF5efKRvhY');
        
        String endpoint=p.getUrl();
        SessionToken st;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        HttpResponse response = http.send(request);
        System.debug('Received the following response from makeCalloutToSFDC:'+response.getBody());
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            JSONParser parser = JSON.createParser(response.getBody());
        	st=new SessionToken();
        	while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'access_token')) {
                parser.nextToken();
                st.access_token=parser.getText();            
            }else if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'id')) {
                parser.nextToken();
                st.id=parser.getText();            
            } else if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'instance_url')) {
                parser.nextToken();
                st.instance_url=parser.getText();            
            } else if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'issued_at')) {
                parser.nextToken();
                st.issued_at=parser.getText();            
            } else if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'signature')) {
                parser.nextToken();
                st.signature=parser.getText();            
            } else if((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'token_type')) {
                parser.nextToken();
                st.token_type=parser.getText();            
            } 
        }
        }
        System.debug('Returning the following SessionToken object:'+st);
        return st;
    }
    
    public static String callService() {
        SessionToken st=generateAccessToken();
        PageReference p=new PageReference(st.instance_url+'/services/apexrest/Cases/');
    	//p.getParameters().put('Authorization',st.access_token);
        String endpoint=p.getUrl();
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setHeader('Authorization', 'Bearer '+st.access_token);
        System.debug('Endpoint URL'+endpoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('Received the following response from makeCalloutToSFDC:'+response.getBody());
        return 'Success';
    }
    
    
}