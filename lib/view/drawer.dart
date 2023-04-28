import 'package:flutter/material.dart';
import 'package:carobar/view/login_screen.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15)
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/MECH.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/logo.jpeg'),
                  ),
                  Text(
                    'Future fixer',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ListTile(

              leading: const Icon(
                Icons.person, color: Colors.black,
                size: 28,
              ),
              title: const Text(
                'Future Fixer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.phone,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                '03449518940',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            const Divider(
              color: Colors.teal,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.work,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'How it works',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.question_answer_outlined,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.home,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            const Divider(
              color: Colors.teal,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(

              leading: const Icon(
                Icons.logout,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'Sign-Out',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> LoginScreen(),
                  ),
                );

              },
            ),
          ],
        ),
      ),
      );
  }
}

