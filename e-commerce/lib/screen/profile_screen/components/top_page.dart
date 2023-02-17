import 'package:flutter/material.dart';

class toppage extends StatelessWidget {
  const toppage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: Colors.grey,
          ),
        ),
        Text("Profile",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w700, color: Colors.grey)),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
