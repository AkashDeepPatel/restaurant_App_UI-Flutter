import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_integration/app/social_sign_in_button.dart';
import 'package:social_media_integration/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.auth}) : super(key: key);

  final AuthBase auth;

  Future<void> _signInWithGoogle() async {
    try {
      // ignore: unused_local_variable
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      // ignore: unused_local_variable
      await auth.signInWithFacebook();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Social Media Integration"),
        elevation: 2.0,
      ),*/
      //
      body: _buildContent(),
      backgroundColor: Colors.grey[200], //
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          //
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: ' Sign In With Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: _signInWithGoogle,
          ),
          //
          //
          SizedBox(
            height: 8.0,
          ),
          //

          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: ' Sign In With Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: _signInWithFacebook,
          ),
        ],
      ),
    );
  }
}

/*

void _signInWithGoogle(){

}*/
