
import 'package:carobar/view/home_screen.dart';
import 'package:carobar/view/registration_screen.dart';
import 'package:carobar/view/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carobar/model/login_model.dart';
import 'package:carobar/viewModel/login_viewmodel.dart';

import '../viewModel/Utils/Utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController  _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  void login() {
    setState(() {
      loading = true;
    });
    _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text.toString()).then((value){
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=>  const Home(),
        ),
      );
          setState(() {
            loading = false;
          });
      Utils().toastMessage(value.user!.email.toString());
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      Utils().toastMessage(error.toString());
          setState(() {
        loading = false;
      });
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
             decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: <Color>[Colors.teal.shade50, Colors.teal.shade400]
                 )
             ),
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/MECH2.png'),
                    radius: 80.0,
                  ),
                  const SizedBox(height: 30.0),
                  buildTextField(_emailController, 'Email or Phone', Icons.mail_outline_rounded),
                  const SizedBox(height: 20.0),
                  buildTextField(_passwordController, 'Password', Icons.lock_outline_rounded),
                  const SizedBox(height: 20.0),
                   SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          login();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),

                      child: loading? const CircularProgressIndicator(backgroundColor: Colors.white,strokeWidth: 3): const Text('login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>  RegistrationScreen(),
                      ),
                    );

                  },
                      child: const Text(' Create Account to Sign Up')

                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget buildTextField(TextEditingController controller, String labelText, IconData icon) {
      return TextField(
        controller: controller,
        style:  TextStyle(color: Colors.teal.shade700),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle:  TextStyle(color: Colors.teal.shade700),
          prefixIcon: Icon(icon, color: Colors.teal.shade700),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal.shade700),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal.shade700),
          ),
        ),
      );
    }
  }



