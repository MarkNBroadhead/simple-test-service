# Simple-test-service
Simple test service to count hits, for testing network connectivity, load balancing.

## Endpoints
Exposes all HTTP methods that return the same data, at paths "/" and "/status". The root url increments a hit counter while "/status" does not.

## Usage
Get the [Docker image](https://hub.docker.com/r/orcslayermack/simple-test-service), run with example command:
```
docker run -d -p 8080:8080 orcslayermack/simple-test-service:latest
```

