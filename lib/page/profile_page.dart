import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishanmishraprofile/model/user.dart';
import 'package:kishanmishraprofile/utils/user_preferences.dart';
import 'package:kishanmishraprofile/widget/appbar_widget.dart';
import 'package:kishanmishraprofile/widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          buildAbout(user),
          const SizedBox(height: 24),
          buildAddress(user),
          const SizedBox(height: 24),
          buildEducation(user),
          const SizedBox(height: 24),
          buildProject(user),
          const SizedBox(height: 24),
          buildinternships(user),
          const SizedBox(height: 24),
          buildsideprojects(user),
          const SizedBox(height: 24),
          buildHobbies(user),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.desc,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.email,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            Text(
              user.phoneno,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            Text(
              user.DOB,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildAddress(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.address,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildEducation(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Bachelor Of Technology',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.education1,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Secondary School',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.education2,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildProject(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Apparel Recommendation System',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.project1,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Zenbook : Social Media Platform',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.project2,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Zed-talk : NLP Chatbot',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.project3,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 15),
            Text(
              'and many more.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget buildinternships(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Internship Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Student Intern',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Smart Interviews',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 15),
            Text(
              user.work1,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Data Analyst Intern',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'mentorrbuddy.com',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 15),
            Text(
              user.work2,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Machine Learning Team Lead',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Grroom',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 15),
            Text(
              user.work3,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Machine Learning Intern',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'SIT',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 15),
            Text(
              user.work4,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 15),
            Text(
              'and many more.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
  Widget buildsideprojects(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Side Projects Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Virtual Makeup',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.sd1,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Squid Game',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.sd2,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Zedrent',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.sd3,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Chess Game Engine',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              user.sd4,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'and many more.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget buildHobbies(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobbies',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.hobbies,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
