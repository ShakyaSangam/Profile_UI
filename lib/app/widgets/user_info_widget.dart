import 'package:flutter/material.dart';

Container buildUserInfo() {
  return Container(
    child: ListTile(
      title: Row(
        children: [
          Text(
            "Sangam Shakya",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ),
        ],
      ),
      subtitle: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "Dharan-3, Nepal",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "Male",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "Student",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
