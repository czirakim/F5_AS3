// Tenant 1 config variables
TENANT = "Tenant_01"
VIP_NAME = "service_01"
VIP = "10.0.0.131"
HTTP_PROFILE = "http-xForwardedFor"
PERSISTANCE = "cookie"
IRULE_NAME = "rule1"
IRULE = "https://raw.githubusercontent.com/czirakim/F5_AS3/master/Tenant1/rule1.irule"
CERT_URL = "https://raw.githubusercontent.com/czirakim/F5_AS3/master/Tenant1/certificates/service1"
KEY_URL = "https://raw.githubusercontent.com/czirakim/F5_AS3/master/Tenant1/certificates/service1.key"
POOL1 = "webpool"
POOL2 = "abc_pool"
LB_MODE = "least-connections-member"
MONITOR = "http"
MEMBERS_1 = ["1.1.1.1","9.9.9.9"]
MEMBERS_2 = ["8.8.8.8","8.8.4.4"]
SERVICEPORT = 8080

