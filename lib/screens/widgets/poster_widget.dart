import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(30)),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/luke.jpg'),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                hintText: "Whats on your mind?",
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.image,
              color: Colors.green,
              size: 36,
            ),
          )
        ],
      ),
    );
  }
}
