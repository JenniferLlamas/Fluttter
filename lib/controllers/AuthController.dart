

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:capacitacion/models/user.dart'


const WS_SERVICE = "http://localhost:3000";


class AuthController{


  Future<User?> login(String username, String password) async { 
      Uri uri = Uri.http('$WS_SERVICE/login');
      try{

            var response = await http.post(uri);


            if(response.statusCode == 200){
              var jsonResponse = jsonDecode(response.body);
              return User(username:jsonResponse['username'],password: jsonResponse['password']);
            } else
              {
                throw "Error";
              }
            
            
        }
        catch(e){
            throw e;
        }
  }
}