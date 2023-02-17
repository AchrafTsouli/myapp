import 'package:flutter/material.dart';

import 'components/profile_image.dart';
import 'components/top_page.dart';

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
            toppage(),
            SizedBox(height: 20),
            ProfilePicture(),
          ],
        ),
      ),
    ));
  }
}
