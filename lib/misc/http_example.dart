import 'dart:convert';

import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/app_text_field.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpExample extends StatefulWidget {
  const HttpExample({Key? key}) : super(key: key);

  @override
  State<HttpExample> createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {

  final TextEditingController userNameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  String responseValue = '';
  bool isLoading = false;


  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    userNameTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Login',
      child: Form(
        // key: formState,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const AppText(title: 'Login',
                color: Colors.blue, size: 16,
                fontWeight: FontWeight.w600,
              ),

              const SizedBox(height: 20,),

              AppTextField(controller: userNameTextController,
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                hintText: 'User Name',
                validate: (value){
                  if(value == null){
                    return 'Please enter username';
                  }else if('$value'.trim().isEmpty){
                    return 'Username is empty';
                  }
                  return null;
                },
                onChanged: (value){
                },
              ),
              const SizedBox(height: 20,),
              AppTextField(controller: passwordTextController,
                color: Colors.black,
                fontWeight: FontWeight.w800,
                hintText: 'Password',
                validate: (value){
                  if(value == null){
                    return 'Please enter password';
                  }else if('$value'.trim().isEmpty){
                    return 'Password is empty';
                  }
                  return null;
                },

              ),

              const SizedBox(height: 20,),

              isLoading ? const Center (child: CircularProgressIndicator(),)
              : ElevatedButton(
                  onPressed: () async {
                    // makeGetRequest();
                  final result = await makePostRequest();
                  if(result.statusCode == 200){
                      final r = ResponseData.fromJson(jsonDecode(result.body));
                      setState(() {
                        responseValue = r.toString();
                      });
                  }else if(result.statusCode == 401){

                    setState(() {
                      responseValue = '${result.statusCode}';
                    });
                  }else{
                    setState(() {
                      responseValue = '${result.statusCode}';
                    });
                  }
                  },
                  child: const Text('Get Details',)
              ),
              const SizedBox(height: 20,),


              Text(
                responseValue,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
  // Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }
  Future<http.Response> makeGetRequest() async {
    const String apiUrl = 'https://jsonplaceholder.typicode.com/albums/1';
    // final Map<String, dynamic> requestData = {
    //   'key1': 'value1',
    //   'key2': 'value2',
    // };

    // final response = await http.post(
    //   Uri.parse(apiUrl),
    //   // body: jsonEncode(requestData),
    //   headers: {
    //     'Content-Type': 'application/json',
    //   },
    // );
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    debugPrint('Res: ${res.statusCode.toString()}');

    return res;
  }

  Future<http.Response> makePostRequest() async {
   setState(() {
     responseValue = '';
     isLoading = true;
   });
    const String apiUrl = 'https://dummyjson.com/auth/login';
    final Map<String, dynamic> requestData = {
      'username': 'kminchelle',//userNameTextController.text,
      'password': '0lelplR',//passwordTextController.text,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(requestData),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    debugPrint('Res: ${response.body.toString()}');
   setState(() {
     isLoading = false;
   });

    return response;
  }
}

class ResponseData{
  final int? id;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;

  ResponseData({this.id, this.username, this.email, this.firstName, this.lastName});

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }
  @override
  String toString() {
    return 'id = $id\nusername = $username\n email = $email';
  }
}





