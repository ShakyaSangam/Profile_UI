import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<int> _images = [
    1,2,3,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _images.map((e) {
        return buildPost(context);
      }).toList(),
    );
  }

  Container buildPost(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        child: Card(
          margin: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSATP5C4Iti8iYFIwldjqZA3Tz_6efOBTvQCHc8xIL-WQkkLQ&s"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            children: [
                              Text("Sangam Shakya"),
                              Text("2 months ago")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                            value: "delete",
                            child: Text("Delete Post"),
                          ),
                          PopupMenuItem(
                            value: "save",
                            child: Text("Save Post"),
                          ),
                        ];
                      },
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  )
                ],
              ),

              // * post text
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    "Why you need to make breaks part of your routine taking note Why you need to make breaks part of your routine taking note "),
              ),

              //*
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Card(
                  elevation: 0,
                  semanticContainer: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg8CzAfl_AEsQ9SqfH_byy8Ozh00wdGBd3tjLMOrlEmWhdLhCq&s",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //*
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text("❤ 123"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text("💬 123"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text("💨 1"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}