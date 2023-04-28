import 'package:flutter/material.dart';
import 'package:carobar/view/components/book_button.dart';
import 'package:carobar/view/home_screen.dart';

class MechanicList extends StatelessWidget {
  const MechanicList({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:
        IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=> const  Home(),
            ),
          );
        }),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.black45, Colors.teal]
              )
          ),
        ),
        title: const Text(
          'Mechanify',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'Ariel',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 36.0,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.car_repair_rounded),
            onPressed: () {

            },
          ),
        ],
        elevation: 15,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(5),
            )),
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

