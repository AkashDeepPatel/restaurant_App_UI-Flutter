import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:meditation_app/components/constants.dart';
import 'package:meditation_app/rounded_button.dart';

class CreateAccountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 75,
        ),
        SignInButton(
          Buttons.Google,
          text: "Sign up with Google",
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: kTextFieldDecoration.copyWith(
              labelText: "Enter Email-id",
              hintText: "me@example.com",
              prefixIcon: Icon(Icons.password),
            ),
          ),
        ),

        // buildTextField("Enter Password", "nhbsdhbs@132", Icons.password),
        RoundedButton(
          "Sign Up",
          Colors.blue,
          () {},
        ),
      ],
    );
  }
}
