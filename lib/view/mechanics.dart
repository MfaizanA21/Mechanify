import 'package:flutter/material.dart';
import 'package:carobar/view/components/book_button.dart';
import 'package:carobar/view/home_screen.dart';

class MechanicList extends StatelessWidget {
  const MechanicList({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            IconButton(
              icon: const Icon(Icons.car_repair_rounded),
              onPressed: () {

              },
            ),
          ],
        ),


      body: Column(

        children: [
          const SizedBox(height: 60),
          Center(
              child: Container(
                padding: const EdgeInsets.all(6),
                color: Colors.transparent,
                child: Row(
                    children:  const <Widget>[
                      Expanded(
                        child:  Center(
                          child: Text(
                            'Available Mechanics',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      )
                    ]
                ),
              ),
      ),
          ListView(
              shrinkWrap: true,
              children: const <Widget>[
                SizedBox(height: 20),
                BookButton("Shafeeq", "0329740109"),
                SizedBox(height: 16),
                BookButton("Mumtaz", "0378923923"),
                SizedBox(height: 16),
                BookButton("Waleed", "03485928020"),
              ]
          )
        ],
      )
    );
    }
}

