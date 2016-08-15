**What are some common HTTP status codes?**
- 200 - most common code indicating success
- 404 - Not Found - means the requested source cannot be found
- 403 - Forbidden - access to the resource is forbidden. A common reason is the client machine is not on a list of machines that have access. Another reason is if the client's certificate is no longer valid.
- 504 - Gateway Timeout - access to the server you are connecting to has been timed out
- 408 - Request Timeout - client didn't produce request within the time the server could wait

**What is the difference between a GET request and a POST request? When might each be used?**
GET requests data from a server, whereas POST submits data to be processed to a server.

GET can be used for web pages that are meant to be read, or deliver information to you, whereas POST might be used for something you are contributing to on the webpage, such as posting a blog post, submitting a form, etc.

**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**
A cookie is a small piece of data that is sent from a website's server and subsequently stored in a user's website browser while the user is browsing the website. A cookie is stored in a text file. It's sent back to the server each time the user's website browser requests a webpage from the website's server.

Cookies can be used to identify users. They also might be used to store data for later requests.