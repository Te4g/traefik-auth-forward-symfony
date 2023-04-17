### What is this?
It is a POC using traefik and symfony as an authentication service to protect an endpoint.

### How to use
1. add to /etc/hosts:
```
127.0.0.1 php.dev.local
127.0.0.1 html.dev.local
```

2. setup project
``` 
make start
```

3. create a user
 - go to https://php.dev.local/register

4. try to access the protected resource
 - go to https://html.dev.local

5. login with the created user

6. et voilà

### Adminer
https://adminer.localhost/?sqlite=db&username=admin&db=symfony%2Fdata.db
user: admin 
password: admin
database: symfony/data.db

