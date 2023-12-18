// Tenant 1 config variables
//
// Service 1
TENANT = "Tenant_01"
SERVICE1 = "service_01"
VIP = "10.0.0.131"
HTTP_PROFILE = "http-xForwardedFor"
PERSISTANCE = "cookie"
IRULE_NAME = "rule1"
IRULE = "https://raw.githubusercontent.com/czirakim/F5_AS3/master/Tenant1/rule1.irule"
POOL1 = "webpool"
POOL2 = "abc_pool"
LB_MODE = "least-connections-member"
MONITOR = "http"
MEMBERS_1 = ["1.1.1.1","10.9.9.9"]
MEMBERS_2 = ["8.8.8.8","8.8.4.4"]
SERVICEPORT = 8080
//
// Service2
SERVICE2= "service_02"
VIP2 = "10.0.0.132"
S2_POOL1 = "service_02_webpool"
S2_MONITOR = "http"
S2_MEMBERS_1 = ["1.1.1.2","9.9.9.9"]