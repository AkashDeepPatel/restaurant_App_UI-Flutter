import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:meditation_app/components/constants.dart';
import 'package:meditation_app/components/rounded_button.dart';
import 'package:meditation_app/screens/login_page.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/profileImg.jpg"),
          ),
          Text(
            "You are not logged in currently, Login Now",
            style: Theme.of(context).textTheme.headline6,
          ),
          RoundedButton("LogIn", Colors.blue, () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    insetPadding: EdgeInsets.symmetric(vertical: 175),
                    content: LoginPage(),
                  );
                });
          })
        ],
      ),
    );
  }
}
// Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// CircleAvatar(
// radius: 50,
// backgroundImage: AssetImage("assets/images/profileImg.jpg"),
// ),
// Text(
// "User Name",
// style: Theme.of(context).textTheme.headline6,
// ),
// Text(
// "Email id",
// style: Theme.of(context).textTheme.headline6,
// ),
// TextButton.icon(
// icon: Icon(Icons.logout),
// label: Text("Log Out"),
// onPressed: () {
// // Navigator.push(context,
// //     MaterialPageRoute(builder: (context) => LoginPage()));
// },
// )
// ],
// ),
