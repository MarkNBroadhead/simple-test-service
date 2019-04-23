# Simple-test-service
Simple test service to count hits, for testing network connectivity, load balancing.

## Endpoints
* GET, PUT, POST, DELETE /
* GET, PUT, POST, DELETE /status
Both / and /status return the same data. The only difference is the root url increments the counter and /status does not.
