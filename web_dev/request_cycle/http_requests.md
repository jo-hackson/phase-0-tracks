What are some common HTTP status codes?

Codes are all three digit numbers. Codes that begin with 1 represent informational message. Codes that begin with 2 represents a successful response. Codes that begin with 3 represents a redirection reponse. Codes that begin with 4 represents a client-side error. Codes that begin with 5 represents server-side error.

Some common error codes:
404: requested resource can no longer be found or available.
403: access to the resource is forbidden; client's machines is not on the whitelist of machines that can access the system 
500: catchall error when other 500 status codes do not make sense
503: web server is not avaiable
504: access to secondary web server has timed out

What is the difference between a GET request and a POST request? When might each be used?

Get: variablaes sent as part of URL, parameters in URL, used for fetching documents, have max URL length, okay to cache, should not change the server

Post: variables sent with data, parameters in body, used for updating data, no max length, not ok to cache, okay to change the server


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small pieces of data that a server sends to the user's  browser. The browser store information about the user and send it along with future requests.