DECLARE
    l_data CLOB;
    json_sample clob; 
    l_url VARCHAR2(1000) := 'https://gw-apic-gov.gazt.gov.sa/e-invoicing/developer-portal/compliance' ;
BEGIN


    json_sample := json_object(
        'csr' value 'LS0tLS1CRUdJTiBDRVJUSUZJQ0FURSBSRVFVRVNULS0tLS0KTUlJQnl6Q0NBWElDQVFBd1R6RUxNQWtHQTFVRUJoTUNVMEV4RnpBVkJnTlZCQXNNRG1GdGJXRnVJRUp5WVc1agphR05vTVJNd0VRWURWUVFLREFwb1lYbGhJSGxoWnlBek1SSXdFQVlEVlFRRERBa3hNamN1TUM0d0xqRXdWakFRCkJnY3Foa2pPUFFJQkJnVXJnUVFBQ2dOQ0FBVGJpclluL3l2L09zSGhGbE1QdkZjUnhJM250dWsxaXd0aWxOWXUKVjIrOTVrbkRBc2hiNU9Gc0lZQ0hvL2tMMDBLdnhMczQrcytyMWc4dnFVZ3BvazhYb0lIRE1JSEFCZ2txaGtpRwo5dzBCQ1E0eGdiSXdnYTh3SkFZSkt3WUJCQUdDTnhRQ0JCY1RGVlJUVkZwQlZFTkJMVU52WkdVdFUybG5ibWx1Clp6Q0JoZ1lEVlIwUkJIOHdmYVI3TUhreEd6QVpCZ05WQkFRTUVqRXRhR0Y1WVh3eUxUSXpOSHd6TFRNMU5ERWYKTUIwR0NnbVNKb21UOGl4a0FRRU1Eek14TURFM05UTTVOelF3TURBd016RU5NQXNHQTFVRURBd0VNVEV3TURFUQpNQTRHQTFVRUdnd0hXbUYwWTJFZ016RVlNQllHQTFVRUR3d1BSbTl2WkNCQ2RYTnphVzVsYzNNek1Bb0dDQ3FHClNNNDlCQU1DQTBjQU1FUUNJQ3JyTzdtSzZWZTZNTmIrSlNJRkRmK0FGMjhqV2ZJYTNIdzlhWEdVOS9KbkFpQXIKSnBVc0h4Z1RrOGtQZTRQSnNJVGJJYXlTeUh2emZwdHFFTWZEajdQN2F3PT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUgUkVRVUVTVC0tLS0t'
      
    );

    apex_web_service.g_request_headers(1).name := 'Content-Type';
    apex_web_service.g_request_headers(1).value := 'application/json';

    apex_web_service.g_request_headers(2).name := 'OTP';
    apex_web_service.g_request_headers(2).value := '11111';
    

    l_data := apex_web_service.make_rest_request(
        p_url => l_url,
        p_http_method => 'POST',
        p_body        => json_sample
    );

    dbms_output.put_line(l_data);
    INSERT INTO API_RES VALUES(l_data);
    
END;