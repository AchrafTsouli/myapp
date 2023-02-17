import 'package:flutter/material.dart';

import 'components/profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(35),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
                Text("Profile",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey)),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(height: 20),
            ProfilePicture(),
          ],
        ),
      ),
    ));
  }
}
