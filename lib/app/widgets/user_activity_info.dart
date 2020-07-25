import 'package:flutter/material.dart';

Row buildUserActivity() {
    return Row(
      children: [
        // * post, followers, following, articles
        Expanded(
          child: Container(
            child: ListTile(
              title: Center(
                  child: Text(
                "3",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )),
              subtitle: Center(child: Text("Posts")),
            ),
          ),
        ),

        Expanded(
          child: Container(
            child: ListTile(
              title: Center(
                  child: Text(
                "12",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )),
              subtitle: Center(child: Text("Followers")),
            ),
          ),
        ),

        Expanded(
          child: Container(
            child: ListTile(
              title: Center( 
                  child: Text(
                "4",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )),
              subtitle: Center(child: Text("Following")),
            ),
          ),
        ),

        Expanded(
          child: Container(
            child: ListTile(
              title: Center(
                  child: Text(
                "3",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )),
              subtitle: Center(child: Text("Articles")),
            ),
          ),
        ),
      ],
    );
  }