DECLARE
    l_data CLOB;
    json_sample clob; 
    l_url VARCHAR2(1000) := 'https://gw-apic-gov.gazt.gov.sa/e-invoicing/developer-portal/production/csids' ;

BEGIN


    json_sample := json_object(
        'compliance_request_id' value '1234567890123'
    );

    

    apex_web_service.g_request_headers(1).name := 'Content-Type';
    apex_web_service.g_request_headers(1).value := 'application/json';


    apex_web_service.g_request_headers(2).name := 'currentCCSID';
    apex_web_service.g_request_headers(2).value := 'TUlJQitqQ0NBYUdnQXdJQkFnSUdBWDVPUEo5ak1Bb0dDQ3FHU000OUJBTUNNQlV4RXpBUkJnTlZCQU1NQ21WSmJuWnZhV05wYm1jd0hoY05Nakl3TVRFeU1USXlNVE0zV2hjTk1qY3dNVEV4TWpJd01EQXdXakJNTVFzd0NRWURWUVFHRXdKVFFURVdNQlFHQTFVRUN3d05TbVZrWkdGb0lFSnlZVzVqYURFUk1BOEdBMVVFQ2d3SVNtVnlhVEl5TWpFeEVqQVFCZ05WQkFNTUNURXlOeTR3TGpBdU1UQldNQkFHQnlxR1NNNDlBZ0VHQlN1QkJBQUtBMElBQkEvOEc5cFlRYndTQXZBcDUyYjZMcU9qczBjcHNwbFBUVmtZU01taklSa1JBUWhHUWVCQUZhd2JsZHNWNHNXT0tnV0gvWFhYcTg1RnZROEhhTnlKUjRLamdhZ3dnYVV3REFZRFZSMFRBUUgvQkFJd0FEQ0JsQVlEVlIwUkJJR01NSUdKcElHR01JR0RNU013SVFZRFZRUUVEQm95TWpJeU1qTXlORFJtWkQxa1pITmhaR1ptWm1Sek1qUXpNakVmTUIwR0NnbVNKb21UOGl4a0FRRU1Eek16TVRFMk1qZzJPVFF3TURBd016RU5NQXNHQTFVRURBd0VNVEV4TVRFUk1BOEdBMVVFR2d3SVUyRnRjR3hsSUVVeEdUQVhCZ05WQkE4TUVGTmhiWEJzWlNCQ2RYTnphVzVsYzNNd0NnWUlLb1pJemowRUF3SURSd0F3UkFJZ1dtTjFFT1d2YzBiMEl0K0kzQkxhNmZkOEx0dmMvVUFFQU10TlNNeWIzRGdDSURDRG1JdTdlbEU3RHkzUExlZzVnNE5LUlpoNkNQeTFFVFd4V0MxZ3NZbUg=';





    

    l_data := apex_web_service.make_rest_request(
        p_url => l_url,
        p_http_method => 'POST',
        p_body        => json_sample
    );

    dbms_output.put_line(l_data);
    DELETE FROM API_RES;
    INSERT INTO API_RES VALUES(l_data);
    
END;