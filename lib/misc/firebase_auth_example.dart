import 'package:chetu_training/misc/widget/app_text.dart';
import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthExample extends StatefulWidget {
  const FirebaseAuthExample({Key? key}) : super(key: key);

  @override
  State<FirebaseAuthExample> createState() => _FirebaseAuthExampleState();
}

class _FirebaseAuthExampleState extends State<FirebaseAuthExample> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController uNameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  User? userCredential;

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        debugPrint('User is currently signed out!');
      } else {
        userCredential = user;
        debugPrint('User is signed in!');
        setState(() {
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Firebase Auth',
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(
            height: 60,
            child: TextFormField(
              controller: uNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Username",
                fillColor: Colors.white70,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 60,
            child: TextFormField(
              controller: passController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Password",
                fillColor: Colors.white70,
              ),
            ),
          ),



          if(userCredential != null)...[
            const SizedBox(height: 50,),
            AppText(title: 'Email: ${userCredential?.email}'),
            const SizedBox(height: 20,),
            AppText(title: 'UID: ${userCredential?.uid}'),

          ],
           const SizedBox(height: 50,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(onPressed: () async {
                  setState(() {
                    userCredential = null;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: uNameController.text, password: passController.text);
                    if (user != null) {
                      setState(() {
                        userCredential = user.user;
                      });
                    }
                  } catch (e) {
                    debugPrint('$e');
                  }
                }, child: const AppText(
                  title: 'Login',
                )),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: ElevatedButton(onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: uNameController.text, password: passController.text);
                    if (newUser != null) {
                      debugPrint('User Created');
                      userCredential = newUser.user;
                    }
                    setState(() {});
                  } catch (e) {
                    debugPrint('$e');
                  }
                }, child: const AppText(
                  title: 'Register',
                )),
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}
