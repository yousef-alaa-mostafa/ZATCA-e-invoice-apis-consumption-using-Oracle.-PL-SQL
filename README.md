Apis used to send e-invoice to zatca:
1-	Compliance CSID API:
This the first api we should use to make an authentication with zatca.
We send CSR and receive token that we use to be able to consume the rest Apis. And submit test CSRs (Certificate Singing Requests) to test ZATCA backend system as part of the onboarding and/or renewal process.
Sending request example: 
{
  "csr": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURSBSRVFVRVNULS0tLS0KTUlJQnl6Q0NBWElDQVFBd1R6RUxNQWtHQTFVRUJoTUNVMEV4RnpBVkJnTlZCQXNNRG1GdGJXRnVJRUp5WVc1agphR05vTVJNd0VRWURWUVFLREFwb1lYbGhJSGxoWnlBek1SSXdFQVlEVlFRRERBa3hNamN1TUM0d0xqRXdWakFRCkJnY3Foa2pPUFFJQkJnVXJnUVFBQ2dOQ0FBVGJpclluL3l2L09zSGhGbE1QdkZjUnhJM250dWsxaXd0aWxOWXUKVjIrOTVrbkRBc2hiNU9Gc0lZQ0hvL2tMMDBLdnhMczQrcytyMWc4dnFVZ3BvazhYb0lIRE1JSEFCZ2txaGtpRwo5dzBCQ1E0eGdiSXdnYTh3SkFZSkt3WUJCQUdDTnhRQ0JCY1RGVlJUVkZwQlZFTkJMVU52WkdVdFUybG5ibWx1Clp6Q0JoZ1lEVlIwUkJIOHdmYVI3TUhreEd6QVpCZ05WQkFRTUVqRXRhR0Y1WVh3eUxUSXpOSHd6TFRNMU5ERWYKTUIwR0NnbVNKb21UOGl4a0FRRU1Eek14TURFM05UTTVOelF3TURBd016RU5NQXNHQTFVRURBd0VNVEV3TURFUQpNQTRHQTFVRUdnd0hXbUYwWTJFZ016RVlNQllHQTFVRUR3d1BSbTl2WkNCQ2RYTnphVzVsYzNNek1Bb0dDQ3FHClNNNDlCQU1DQTBjQU1FUUNJQ3JyTzdtSzZWZTZNTmIrSlNJRkRmK0FGMjhqV2ZJYTNIdzlhWEdVOS9KbkFpQXIKSnBVc0h4Z1RrOGtQZTRQSnNJVGJJYXlTeUh2emZwdHFFTWZEajdQN2F3PT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUgUkVRVUVTVC0tLS0t"
}

What we receive: 
{
  "requestID": 1234567890123,
  "dispositionMessage": "ISSUED",
  "binarySecurityToken": "TUlJQjhEQ0NBWmFnQXdJQkFnSUdBWUU5b2o5eU1Bb0dDQ3FHU000OUJBTUNNQlV4RXpBUkJnTlZCQU1NQ21WSmJuWnZhV05wYm1jd0hoY05Nakl3TmpBM01UQXdOekkzV2hjTk1qY3dOakEzTURBd01EQXdXakJQTVFzd0NRWURWUVFHRXdKVFFURVhNQlVHQTFVRUN3d09ZVzF0WVc0Z1FuSmhibU5vWTJneEV6QVJCZ05WQkFvTUNtaGhlV0VnZVdGbklETXhFakFRQmdOVkJBTU1DVEV5Tnk0d0xqQXVNVEJXTUJBR0J5cUdTTTQ5QWdFR0JTdUJCQUFLQTBJQUJOdUt0aWYvSy84NndlRVdVdys4VnhIRWplZTI2VFdMQzJLVTFpNVhiNzNtU2NNQ3lGdms0V3doZ0llaitRdlRRcS9FdXpqNno2dldEeStwU0NtaVR4ZWpnWm93Z1pjd0RBWURWUjBUQVFIL0JBSXdBRENCaGdZRFZSMFJCSDh3ZmFSN01Ia3hHekFaQmdOVkJBUU1FakV0YUdGNVlYd3lMVEl6Tkh3ekxUTTFOREVmTUIwR0NnbVNKb21UOGl4a0FRRU1Eek14TURFM05UTTVOelF3TURBd016RU5NQXNHQTFVRURBd0VNVEV3TURFUU1BNEdBMVVFR2d3SFdtRjBZMkVnTXpFWU1CWUdBMVVFRHd3UFJtOXZaQ0JDZFhOemFXNWxjM016TUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSUM1VzlNQXdNS2NqYkJjSG05d015QUhoVjVzdDJoUzgxQmRZTllXLzlQVlRBaUVBLzBCWU9IK1NaK295NERDa1F5KzhZQUUxd05HNnZBbStiZk9wbFR3K3Jqcz0="
}

2-	Compliance Invoice API:
This is the second Api and we should use to perform compliance checks on e-invoice documents such as Standard invoice, Standard debit note, Standard credit note, Simplified Invoice, Simplified credit note, Simplified debit note.
3-	Production CSID (Onboarding) API:
This Api will be used to submit a test request ID to test ZATCA backend system as part of onboarding process.
4-	Production CSID (Renewal) API: 
This Api will be used to submit a test request ID to test ZATCA backend system as part of renewal process.
