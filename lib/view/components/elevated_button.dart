import 'package:flutter/material.dart';
import 'package:carobar/view/mechanics.dart';

class InsertButton extends StatelessWidget{
  final String name;
   final IconData icon;
  //final AssetImage pic;
  final Color buttonColor;
  const InsertButton(this.name,this.icon,this.buttonColor,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 190,
      padding: const EdgeInsets.only(top: 6, bottom: 6, right: 4, left: 4),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>  const MechanicList(),
            ),
          );
        },
        icon: Icon(icon, color: Colors.black,),
        label: Text(name,textAlign: TextAlign.justify,
        style: const TextStyle(
            fontFamily: "Ariel",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontSize: 14
        ),
      ),

        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            fixedSize: const Size(70, 30),
            side: const BorderSide(color: Colors.transparent),
            //side: BorderSide(width: 6, color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )
        ),
      ),
    );
  }
}