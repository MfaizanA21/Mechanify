import 'package:flutter/material.dart';


class DrawerIcon extends StatelessWidget {
  const DrawerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
           child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/green.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/logo.jpeg'),
                    ),
                    const Text(
                      'Future fixer',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Futurefixer@gmail.com',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(

                leading: const Icon(
                  Icons.person,
                  size: 28,
                ),
                title: const Text(
                  'Future Fixer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
              ListTile(

                leading: const Icon(
                  Icons.phone,
                  size: 28,
                  color: Colors.teal,
                ),
                title: const Text(
                  '03449518940',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
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
                  color: Colors.teal,
                ),
                title: const Text(
                  'How it works',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
              ListTile(

                leading: const Icon(
                  Icons.question_answer_outlined,
                  size: 28,
                  color: Colors.teal,
                ),
                title: const Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
              ListTile(

                leading: const Icon(
                  Icons.home,
                  size: 28,
                  color: Colors.teal,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
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
                  color: Colors.teal,
                ),
                title: const Text(
                  'Sign-Out',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
            ],
          ),
        ),
      );
  }
}

