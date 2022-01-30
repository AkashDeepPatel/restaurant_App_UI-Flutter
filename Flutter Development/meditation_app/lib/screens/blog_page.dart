import 'package:flutter/material.dart';
import 'package:meditation_app/upload_blog.dart';

import 'components/constants.dart';

// ignore: use_key_in_widget_constructors
class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Blog", style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/300",
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Quotes here",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadBlog()),
                  );
                },
                child: Icon(
                  Icons.add,
                  size: 35,
                ),
                backgroundColor: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
