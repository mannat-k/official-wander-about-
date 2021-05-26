## Accessing our API

### Get authentication token
Endpoint: https://wander-about.herokuapp.com/api-token-auth/ <br/>
Parameters required : username, password <br/>
Sample body: json { "username": "admin", "password": "password" } <br/>
### Get / Post user
Endpoint :https://wander-about.herokuapp.com/api/user/ <br/>
#### GET <br/>
parameters: auth token as header <br/>
sample header: json { "Authorization": "TOKEN <token>" } <br/>
sample response: json { "username": "<username>", "first_name": "<first_name>", "last_name": "<last_name>", "email": "<email>", "password": "<encrypted string>" } <br/>
#### POST <br/>
parameters: <br/>
header: auth token as header <br/>
sample: json { "Authorization" : "TOKEN <token>" } <br/>
body: username, email, first_name, last_name, password <br/>
sample: json { "username": "<username>", "first_name": "<first_name>", "last_name": "<last_name>", "email": "<email>", "password": "<encrypted string>" } <br/>
response (on succesful): json { "username": "<username>", "first_name": "<first_name>", "last_name": "<last_name>", "email": "<email>", "password": "<encrypted string>" } <br/>