import 'package:flutter/material.dart';
import 'package:meditation_app/components/constants.dart';

class UploadBlog extends StatefulWidget {
  @override
  State<UploadBlog> createState() => _UploadBlogState();
}

class _UploadBlogState extends State<UploadBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Title: ",
                  style: Theme.of(context).textTheme.headline6,
                ),
                // TextField(
                //   decoration: kTextFieldDecoration.copyWith(
                //     fillColor: Colors.red,
                //     labelText: "Enter Email-id",
                //     hintText: "me@example.com",
                //     prefixIcon: Icon(Icons.email),
                //   ),
                //   keyboardType: TextInputType.text,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
