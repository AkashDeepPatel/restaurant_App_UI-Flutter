import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:meditation_app/components/constants.dart';
import 'package:meditation_app/create_account_form.dart';
import 'package:meditation_app/login_form.dart';
import 'package:meditation_app/profile_page.dart';
import 'package:meditation_app/rounded_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

bool isCreateAccountPressed = false;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    bool showSpinner = false;
    late String email;
    late String password;
    bool isCreateAccountPressed = false;
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),

              SignInButton(
                Buttons.Google,
                text: "Sign in with Google",
                onPressed: () {},
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 250,
                      color: Colors.red,
                      height: 1,
                    ),
                  ),
                  Text("OR"),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 250,
                      color: Colors.red,
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: "Enter Email-id",
                    hintText: "me@example.com",
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                child: TextField(
                  obscureText: true,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: "Enter Password",
                    hintText: "hbdbv@333#",
                    prefixIcon: Icon(Icons.password),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),

              // buildTextField("Enter Password", "nhbsdhbs@132", Icons.password),
              RoundedButton(
                "Log In",
                Colors.blue,
                () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Don't have an account?",
                style: Theme.of(context).textTheme.bodyText1,
              ),

              RoundedButton("Sign Up", Colors.blue, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              }
                  // () async {
                  //   //Go to login screen.
                  //   setState(() {
                  //     showSpinner = true;
                  //   });
                  //   try {
                  //     final newUser = await _auth.createUserWithEmailAndPassword(
                  //         email: email, password: password);
                  //     if (newUser != null) {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => ProfilePage()),
                  //       );
                  //     }
                  //     setState(() {
                  //       showSpinner = false;
                  //     });
                  //   } catch (e) {
                  //     print(e);
                  //   }
                  // },
                  )
            ],
          ),
          // child: Column(
          //   children: [
          //     // !isCreateAccountPressed ? LoginForm() : CreateAccountForm(),
          //     // Padding(
          //     //   padding: const EdgeInsets.only(top: 15.0),
          //     //   child: Text(!isCreateAccountPressed
          //     //       ? "Don't have an account?"
          //     //       : "Already have an account?"),
          //     // ),
          //     // RoundedButton(
          //     //   !isCreateAccountPressed ? "Create new account" : "Log In",
          //     //   Colors.blue,
          //     //   () {
          //     //     if (!isCreateAccountPressed) {
          //     //       setState(() {
          //     //         isCreateAccountPressed = true;
          //     //       });
          //     //     } else {
          //     //       setState(() {
          //     //         isCreateAccountPressed = false;
          //     //       });
          //     //     }
          //     //   },
          //     // ),
          //   ],
          // )
        ),
      ),
    );
  }
}
