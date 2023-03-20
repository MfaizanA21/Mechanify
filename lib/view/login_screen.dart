import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('Assets/MECH.png'),
                  radius: 80.0,
                ),
                SizedBox(height: 30.0),
                buildTextField(_emailController, 'Email or Phone', Icons.mail_outline_rounded),
                SizedBox(height: 20.0),
                buildTextField(_phoneController, 'Password', Icons.lock_outline_rounded),
                SizedBox(height: 20.0),
                buildButton('Login'),
                TextButton(onPressed: () {},
                    child:
                    Text(' Create Account to Sign Up',)
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildTextField(TextEditingController controller, String labelText, IconData icon) {
      return TextField(
        controller: controller,
        style: TextStyle(color: Colors.teal),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.teal),
          prefixIcon: Icon(icon, color: Colors.teal),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
      );
    }

    Widget buildButton(String text, {bool isOutline = false}) {
      return SizedBox(
        width: double.infinity,
        height: 50.0,
        child: isOutline
            ? OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.teal),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.teal),
          ),
        )
            : ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }
  }



