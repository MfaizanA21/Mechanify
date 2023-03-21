import 'package:carobar/view/drawer.dart';
import 'package:flutter/material.dart';
import 'package:carobar/view/components/elevated_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(backgroundColor: Colors.teal[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),

        ),
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
                  // Row(
                  //   children: const [
                  //     Text(
                  //       'Futurefixer@gmail.com',
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //         color: Colors.white,
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //     Icon(
                  //       Icons.arrow_drop_down_circle_outlined,
                  //       size: 13,
                  //     ),
                  //   ],
                  // ),
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
              color: Colors.black,
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
              color: Colors.black,
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

              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: const Text('Mechanify'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.black45, Colors.teal]
              )
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'Ariel',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 36.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.car_repair_rounded, color: Colors.white,
            ),
            onPressed: () {
            },
          )
        ],
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: SizedBox(
              height: 170,
              child: Image.asset('assets/images/res_home.png'),
            ),
          ),
          //Ink.image(image: AssetImage('assets/images/res_home.png')),
           //const Image(image: AssetImage('assets/images/car-wash.png')),
         Center(
           child: Container(
             padding: const EdgeInsets.all(6),
             color: Colors.teal[800],
             child: Row(
               children:  const <Widget>[
                 Expanded(
                     child:  Center(
                       child: Text('OUR SERVICES', style: TextStyle(

                         color: Colors.white,
                         fontSize: 26,
                         fontFamily: 'Ariel',
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.bold,
                       ),
                         textAlign: TextAlign.start,
                       ),
                     ),

                 )
               ]
             ),
           ),
         ),
           Center(
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
               children: const [
               //Image(image: AssetImage('assets/images/car-wash.png')),
                 InsertButton('Engine Service'),
                 InsertButton("Car Wash"),
              ]
             ),
           ),
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InsertButton("Oil Change"),
                  InsertButton("Paint"),
                ]
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  InsertButton("Accessories"),
                  InsertButton("Tyre Change"),
                ]
            ),
          ),

        ],
      ),
    backgroundColor: Colors.black,
    );
  }
}





