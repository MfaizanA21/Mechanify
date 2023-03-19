import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:const Drawer(


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
          fontStyle: FontStyle.italic,
          fontFamily: 'Ariel',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 42.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.car_repair_rounded, color: Colors.black,
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
          //Ink.image(image: AssetImage('assets/images/res_home.png')),
           const Image(image: AssetImage('assets/images/res_home.png')),
         Container(
           padding: const EdgeInsets.all(6),
           color: Colors.teal,
           child: Row(
             children:  const <Widget>[
               Expanded(
                   child:  Text('OUR SERVICES', style: TextStyle(
                     color: Colors.black,
                     fontSize: 32,
                     fontFamily: 'Ariel',
                     fontStyle: FontStyle.italic,
                     fontWeight: FontWeight.bold,
                   ),
                     textAlign: TextAlign.start,
                   ),

               )
             ]
           ),
         ),
           Row(
             children: const [
             //Image(image: AssetImage('assets/images/car-wash.png')),
               InsertButton('Engine Service', Image(image: AssetImage('assets/images/res_home.png'))),
               InsertButton("Car Wash", Image(image: AssetImage('assets/images/car-wash.png'))),
            ]
           ),
          Row(
              children: const [
                InsertButton("Oil Change", Image(image: AssetImage('assets/images/oil.png'))),
                InsertButton("paint",   Image(image: AssetImage('assets/images/spray-gun.png'))),
              ]
          ),
          Row(
              children: const [
                InsertButton("Accessories",  Image(image:AssetImage('assets/images/car-battery.png'))),
                InsertButton("Tyre Change",  Image(image:AssetImage('assets/images/rim.png'))),
              ]
          ),

        ],
      ),
    backgroundColor: Colors.black,
    );
  }
}

class InsertButton extends StatelessWidget{
  final String? name;
  final Image? image;
  const InsertButton(this.name,this.image, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 194,
      height: 130,
      child: ElevatedButton(
        onPressed: () {},

      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          fixedSize: const Size(70, 30),
          side: const BorderSide(color: Colors.teal),
          //side: BorderSide(width: 6, color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
        //Image(image: AssetImage('$image'))

        child: Text('$name',
          style: const TextStyle(
            fontFamily: 'Ariel',
            fontStyle: FontStyle.italic,
            fontWeight:FontWeight.normal,
            color: Colors.teal
          ),
        ),


      ),
      );
  }
}



