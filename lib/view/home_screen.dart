import 'package:flutter/material.dart';
import 'package:carobar/view/components/elevated_button.dart';
import 'login_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});
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
      appBar:AppBar(
        title: const Text('Mechanify'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
              )
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'heading',
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 36.0,
        ),
        actions:  <Widget>[
          // Image(
          //   image: AssetImage('assets/images/MECH.png'),
          //   height: 25,
          //   width: 25,
          // )
          IconButton(
            icon: const Icon(Icons.car_repair_rounded),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               ClipRRect(
                borderRadius: BorderRadius.circular(4),
                 child: Image.asset('assets/images/res_home.png'),

              ),
              // SizedBox(
              //   height: 170,
              //   child: Image.asset('assets/images/res_home.png'),
              // ),
             Center(
               child: Container(
                 decoration: BoxDecoration (
                     gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
                     )
                 ),
                 padding: const EdgeInsets.all(6),
                 child: Row(
                   children:  const <Widget>[
                     Expanded(
                         child:  Center(
                           child: Text('OUR SERVICES', style: TextStyle(

                             color: Colors.white,
                             fontSize: 26,
                             fontFamily: 'heading',
                             fontStyle: FontStyle.normal,
                             fontWeight: FontWeight.w100,
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
                   children: [
                   //Image(image: AssetImage('assets/images/car-wash.png')),
                     InsertButton('Engine', 'assets/images/engineering (1).png',Colors.red.shade100),
                     InsertButton('Car Wash', 'assets/images/car-wash.png',Colors.lightGreen.shade100),
                  ]
                 ),
               ),
              Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      InsertButton('Oil Change', 'assets/images/oil.png',Colors.amber.shade100),
                      InsertButton('Paint Job', 'assets/images/spray-gun.png',Colors.deepPurple.shade100),
                    ]
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      InsertButton('Accesories', 'assets/images/car-battery.png',Colors.lightBlue.shade100),
                      InsertButton('Tyre Change', 'assets/images/rim.png',Colors.teal.shade100),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    backgroundColor: Colors.white,
    );
  }
}





