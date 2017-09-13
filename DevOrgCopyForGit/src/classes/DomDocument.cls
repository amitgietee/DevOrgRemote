public class DomDocument {
 
    // Pass in the URL for the request
    // For the purposes of this sample,assume that the URL
    // returns the XML shown above in the response body
    public void parseResponseDom(String xml){
        //Http h = new Http();
       // HttpRequest req = new HttpRequest();
        // url that returns the XML in the response body
       // req.setEndpoint(url);
       // req.setMethod('GET');
       // HttpResponse res = h.send(req);
        Dom.Document doc = new Dom.Document();
        doc.load(xml);
        //Retrieve the root element for this document.
        Dom.XMLNode address = doc.getRootElement();
        
        String name = address.getChildElement('name', null).getText();
        String street1 = address.getChildElement('street1', null).getText();
        String street2 = address.getChildElement('street2', null).getText();
        String city = address.getChildElement('city', null).getText();
        String state = address.getChildElement('state', null).getText();
        String country = address.getChildElement('country', null).getText();
        // print out specific elements
        System.debug('************************************Method 1**********************************');
        System.debug('Name: ' + name);
        System.debug('Street 1: ' + street1);
        System.debug('Street 2: ' + street2);
        System.debug('City: ' + city);
        System.debug('State: ' + state);
        System.debug('Country: ' + country);
        
        // Alternatively, loop through the child elements.
        // This prints out all the elements of the address
        System.debug('************************************Method 2**********************************');
        for(Dom.XMLNode child : address.getChildElements()) {
           System.debug(child.getText());
        }
    }
}