DECLARE
    l_data CLOB;
    json_sample clob; 
    l_url VARCHAR2(1000) := 'https://gw-apic-gov.gazt.gov.sa/e-invoicing/developer-portal/production/csids' ;

BEGIN


    json_sample := json_object(
        'csr' value 'LS0tLS1CRUdJTiBDRVJUSUZJQ0FURSBSRVFVRVNULS0tLS0KTUlJQjJEQ0NBWDRDQVFBd1NERUxNQWtHQTFVRUJoTUNVMEV4RlRBVEJnTlZCQXNNREZKNWFXRmtJRUp5WVc1agphREVPTUF3R0ExVUVDZ3dGU21WeWFYSXhFakFRQmdOVkJBTU1DVEV5Tnk0d0xqQXVNVEJXTUJBR0J5cUdTTTQ5CkFnRUdCU3VCQkFBS0EwSUFCS2E0VG53UVBBQWp2cDAxV081UEgreXJlR2lkRkxXK2VTMUR5NXAxVkxMMktmZjQKRGg5dG9zZGphQ2ptNjBDc1AwQ09UZGNHdDROMnRmOHA2VkNmQW55Z2dkWXdnZE1HQ1NxR1NJYjNEUUVKRGpHQgp4VENCd2pBa0Jna3JCZ0VFQVlJM0ZBSUVGeE1WVkZOVVdrRlVRMEV0UTI5a1pTMVRhV2R1YVc1bk1JR1pCZ05WCkhSRUVnWkV3Z1k2a2dZc3dnWWd4S0RBbUJnTlZCQVFNSHpFdFZHVnpkSHd5TFZSbGMzUjhNeTB6TlRRek5UUXoKTlRnNE16UXpNalV4SHpBZEJnb0praWFKay9Jc1pBRUJEQTh6TVRBeE1qSXpPVE0xTURBd01ETXhEVEFMQmdOVgpCQXdNQkRFeE1EQXhFVEFQQmdOVkJCb01DRk5oYlhCc1pTQkZNUmt3RndZRFZRUVBEQkJUWVcxd2JHVWdRblZ6CmMybHVaWE56TUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFDVUxlaUFOc1FYZVpYejRVYjlxWkRGaUNJWlNXeXkKSE1odmpibjFzTnZsaFFJZ08zaFNVeEgvNkl5ckZzeXF2cHc3NnlyaVRQSzE3VHdONHhEK0lpaFpQR3c9Ci0tLS0tRU5EIENFUlRJRklDQVRFIFJFUVVFU1QtLS0tLQ=='
    );

    

    apex_web_service.g_request_headers(1).name := 'Content-Type';
    apex_web_service.g_request_headers(1).value := 'application/json';

    apex_web_service.g_request_headers(2).name := 'OTP';
    apex_web_service.g_request_headers(2).value := '123456';

    apex_web_service.g_request_headers(3).name := 'accept-language';
    apex_web_service.g_request_headers(3).value := 'en';


    apex_web_service.g_request_headers(4).name := 'currentPCSID';
    apex_web_service.g_request_headers(4).value := 'TUlJQitqQ0NBYUdnQXdJQkFnSUdBWDVPUEo5ak1Bb0dDQ3FHU000OUJBTUNNQlV4RXpBUkJnTlZCQU1NQ21WSmJuWnZhV05wYm1jd0hoY05Nakl3TVRFeU1USXlNVE0zV2hjTk1qY3dNVEV4TWpJd01EQXdXakJNTVFzd0NRWURWUVFHRXdKVFFURVdNQlFHQTFVRUN3d05TbVZrWkdGb0lFSnlZVzVqYURFUk1BOEdBMVVFQ2d3SVNtVnlhVEl5TWpFeEVqQVFCZ05WQkFNTUNURXlOeTR3TGpBdU1UQldNQkFHQnlxR1NNNDlBZ0VHQlN1QkJBQUtBMElBQkEvOEc5cFlRYndTQXZBcDUyYjZMcU9qczBjcHNwbFBUVmtZU01taklSa1JBUWhHUWVCQUZhd2JsZHNWNHNXT0tnV0gvWFhYcTg1RnZROEhhTnlKUjRLamdhZ3dnYVV3REFZRFZSMFRBUUgvQkFJd0FEQ0JsQVlEVlIwUkJJR01NSUdKcElHR01JR0RNU013SVFZRFZRUUVEQm95TWpJeU1qTXlORFJtWkQxa1pITmhaR1ptWm1Sek1qUXpNakVmTUIwR0NnbVNKb21UOGl4a0FRRU1Eek16TVRFMk1qZzJPVFF3TURBd016RU5NQXNHQTFVRURBd0VNVEV4TVRFUk1BOEdBMVVFR2d3SVUyRnRjR3hsSUVVeEdUQVhCZ05WQkE4TUVGTmhiWEJzWlNCQ2RYTnphVzVsYzNNd0NnWUlLb1pJemowRUF3SURSd0F3UkFJZ1dtTjFFT1d2YzBiMEl0K0kzQkxhNmZkOEx0dmMvVUFFQU10TlNNeWIzRGdDSURDRG1JdTdlbEU3RHkzUExlZzVnNE5LUlpoNkNQeTFFVFd4V0MxZ3NZbUg=';
    

    l_data := apex_web_service.make_rest_request(
        p_url => l_url,
        p_http_method => 'PATCH',
        p_body        => json_sample
    );

    dbms_output.put_line(l_data);
    DELETE FROM API_RES;
    INSERT INTO API_RES VALUES(l_data);
    
END;