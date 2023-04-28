import 'package:carobar/view/home_screen.dart';
import 'package:carobar/view/mechanics.dart';
import 'package:flutter/material.dart';

class  LoginButton extends StatelessWidget {
  final String? name;
  const LoginButton(this.name,{super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=> const Home(),
            ),
          );
        },

        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
        //Image(image: AssetImage('$image'))

        child: Text('$name',
          style: const TextStyle(color: Colors.black),
        ),


      ),
    );
  }
}

