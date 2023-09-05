import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/app_text_field.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:chetu_training/navigation/route_paths.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController userNameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final formState = GlobalKey<FormState>();


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
      key: formState,
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



            const SizedBox(height: 10,),

            const Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password',)),
            const SizedBox(height: 20,),

            ElevatedButton(onPressed: () async {
              if(formState.currentState!.validate()){
              final result = await Navigator.pushNamed(context, RoutePaths.dashboard, arguments: userNameTextController.text);
              print('Result = $result');
              }
            },
            child: const Text('Login',)),
            const SizedBox(height: 20,),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Does not have an account?',),
                SizedBox(width: 10,),
                AppText(
                  title: 'Sign Up',
                fontWeight: FontWeight.w800,
                ),
              ],
            )

          ],
        ),
      ),
    ),
    );
  }
}
