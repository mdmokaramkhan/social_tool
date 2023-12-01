import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/facemoji.png',
                ),
                backgroundColor: Colors.deepPurple,
                radius: 40,
              ),
              SizedBox(height: 15),
              Text(
                '@Unidentified One',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Social Tool, Open source tool for basic usage',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 60),
              SocialTile(
                icon: 'assets/images/github.png',
                title: 'Github',
                username: '@mdmokaramkhan',
              ),
              SizedBox(height: 10),
              SocialTile(
                icon: 'assets/images/instagram.png',
                title: 'Instagram',
                username: '@unidentified_coder_',
              ),
              SizedBox(height: 10),
              SocialTile(
                icon: 'assets/images/linkedin.png',
                title: 'Linkedin',
                username: '@unidentified-coder',
              ),
              SizedBox(height: 10),
              SocialTile(
                icon: 'assets/images/x.png',
                title: 'X',
                username: '@khanmokaram',
              ),
              SizedBox(height: 10),
              SocialTile(
                icon: 'assets/images/youtube.png',
                title: 'Youtube',
                username: 'Everything About Tech',
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Developed With "),
                  Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.red,
                  ),
                  Text(" Using Flutter "),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialTile extends StatelessWidget {
  final String icon;
  final String title;
  final String username;
  const SocialTile({
    super.key,
    required this.icon,
    required this.title,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          // Ontap goto the instagram profile
          // https://www.instagram.com/unidentified_coder_/
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blueGrey),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(icon),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[650],
              )
            ],
          ),
        ),
      ),
    );
  }
}
