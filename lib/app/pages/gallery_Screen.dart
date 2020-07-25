import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<String> _list = ["travel", "holiday", "feel"];

  Map<String, String> _likes = {
    "travel": "123",
    "holiday": "124",
    "feel": "12"
  };

  Map<String, String> _images = {
    "travel":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2AQ5ZjqVSp5JtczPTH15iHazVv4QGo3H0-TdPNj4RcDEMwcgR&s",
    "holiday":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFbg5hny5UNnWH2ipIoDeZYm41agObps_dKddjdOeafbrj1T4&s",
    "feel":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk2FCDeKOGm7ukLjUFA2VeygUJ1WG-ciNeUk3r4qC08m3TtHZe&s"
  };

  Map<String, String> _comments = {
    "travel": "12",
    "holiday": "23",
    "feel": "32"
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _list.map((e) {
        return buildGallery(context, e);
      }).toList(),
    );
  }

  InkWell buildGallery(BuildContext context, String e) {
    return InkWell(
        onLongPress: () {
          buildShowDialog(context, e);
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          // height: MediaQuery.of(context).size.width / 2.5,
          child: Card(
            elevation: 0,
            semanticContainer: false,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              _images[e],
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  }

  Future buildShowDialog(BuildContext context, String e) {
    return showDialog(
            context: context,
            child: WillPopScope(
              onWillPop: () async => true,
              child: AlertDialog(
                title: Card(
                  elevation: 0,
                  semanticContainer: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    _images[e],
                    fit: BoxFit.cover,
                  ),
                ),
                content: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Text("❤"),
                            Text(_likes[e],
                                style: TextStyle(color: Colors.black87)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        child: Row(
                          children: [
                            Text("💬"),
                            Text(_comments[e],
                                style: TextStyle(color: Colors.black87)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
