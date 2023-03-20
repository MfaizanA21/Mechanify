import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
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
                    Text(
                      'Future fixer',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: [
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

                leading: Icon(
                  Icons.person,
                  size: 28,
                ),
                title: Text(
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

                leading: Icon(
                  Icons.phone,
                  size: 28,
                  color: Colors.teal,
                ),
                title: Text(
                  '03449518940',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
              new Divider(
                color: Colors.teal,
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(

                leading: Icon(
                  Icons.work,
                  size: 28,
                  color: Colors.teal,
                ),
                title: Text(
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

                leading: Icon(
                  Icons.question_answer_outlined,
                  size: 28,
                  color: Colors.teal,
                ),
                title: Text(
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

                leading: Icon(
                  Icons.home,
                  size: 28,
                  color: Colors.teal,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                onTap: () {

                },
              ),
              new Divider(
                color: Colors.teal,
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(

                leading: Icon(
                  Icons.logout,
                  size: 28,
                  color: Colors.teal,
                ),
                title: Text(
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
