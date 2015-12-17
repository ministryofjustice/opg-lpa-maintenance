#LPA Site Under Maintenance

This is the under maintenance page for LPA. It lives on its own server at **52.28.130.177**. Any domain pointing to that IP will return the maintenance page, but the SSL certificate is only valid for:
- https://lastingpowerofattorney.service.gov.uk/
- https://www.lastingpowerofattorney.service.gov.uk/

## Server Setup
The site's document root is: 
/srv/opg-lpa-down/application/current

The site's nginx config is: 
/etc/nginx/sites-available/lpa-down

The site's SSL certs are in: 
/etc/nginx/certs/opg-lpa

## Response codes
All responses from the server are HTTP **503 Service Temporarily Unavailable**. The exception being static assets which are returned with **200 OK** as usual.
