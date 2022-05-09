# CodeIgniter Rest Server With JWT Authentication
https://github.com/saintnetarf/ci3-jwt
A fully RESTful server implementation for CodeIgniter using JWT for Authentication
## Notes

- Import Database from /db/ci3-jwt.db
- Test it with postman
- Create post method from postman for user authentication "http://localhost/ci3-jwt/api/auth/login"
- Add this to body multipart form :
	
	username = admin
	
	password = admin
- If your authentication success you will get generated token response
- To test it, go Create post method from postman "http://localhost/ci3-jwt/api/main/test" and then you can attach that generated token you've got to the header authentication bearer token. see example bellow :

	Authentication: Bearer "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNjUxNTgxMDgxLCJleHAiOjE2ODMxMTcwODF9.yn-wbGWRKY430WLts20TyVYAHYtxWU0mjqN3LHhePN8"

## Refference

This project Using REST by Phil Sturgeon and Firebase/PHP-JWT.
For more information :
## REST
https://github.com/chriskacerguis/codeigniter-restserver
## JWT
https://github.com/firebase/php-jwt
