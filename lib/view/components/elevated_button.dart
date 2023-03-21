import 'package:flutter/material.dart';
import 'package:carobar/view/mechanics.dart';

class InsertButton extends StatelessWidget{
  final String? name;
  const InsertButton(this.name,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6, right: 4, left: 4),
      width: 194,
      height: 130,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>  const MechanicList(),
            ),
          );
        },

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
              fontStyle: FontStyle.normal,
              fontWeight:FontWeight.normal,
              color: Colors.teal
          ),
        ),


      ),
    );
  }
}