import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../viewModel/Utils/Utils.dart';

// const TextStyle kDefaultTextStyle = TextStyle(
//   fontSize: 40,
//   fontWeight: FontWeight.w700,
//   color: Colors.black,
// );
//
// const TextStyle kButtonTextStyle = TextStyle(
//   fontSize: 16,
//   fontWeight: FontWeight.w600,
//   color: Colors.black,
// );
//
//
// class RegistrationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.grey, Colors.grey],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 150,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 20),
//                       Text(
//                         'Mechanify',
//                         style: kDefaultTextStyle,
//                       ),
//                       SizedBox(height: 10), // Adjusted the height here
//                       Image.asset(
//                         'assets/images/MECH.png', // Replace with your logo image path
//                         width: 100,
//                         height: 200,
//                       ),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Container(
//                 padding: EdgeInsets.all(5),
//                 child: Column(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         TextField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.phone_sharp),
//                             hintText: 'Phone number',
//                             hintStyle: TextStyle(color: Colors.black),
//                             filled: true,
//                             fillColor: Colors.grey,
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           keyboardType: TextInputType.number,
//                         ),
//                         SizedBox(height: 20),
//                         TextField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.mail),
//                             hintText: 'Email',
//                             hintStyle: TextStyle(color: Colors.black),
//                             filled: true,
//                             fillColor: Colors.grey,
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//                         SizedBox(height: 20),
//                         TextField(
//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.lock),
//                             hintText: 'Password',
//                             hintStyle: TextStyle(color: Colors.black),
//                             filled: true,
//                             fillColor: Colors.grey,
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           keyboardType: TextInputType.visiblePassword,
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Center(
//                       child: Container(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed:
//                               () {
// // Handle register button press
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.transparent,
//                             padding: EdgeInsets.symmetric(vertical: 20),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               side: BorderSide(color: Colors.transparent),
//                             ),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Register',
//                               style: kButtonTextStyle,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.teal.shade700, Colors.white38],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                Text(
                  'Mechanify',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30.0),
                buildTextField(
                  _emailController,
                  'Email or Phone',
                  Icons.mail_outline_rounded,
                ),
                const SizedBox(height: 20.0),
                buildTextField(
                  _passwordController,
                  'Password',
                  Icons.lock_outline_rounded,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      login();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: loading
                      ? const CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    strokeWidth: 3,
                  )
                      : const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      TextEditingController controller, String labelText, IconData icon) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.teal.shade700),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.teal.shade700),
        prefixIcon: Icon(icon, color: Colors.teal.shade700),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal.shade700),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal.shade700),
        ),
      ),
    );
  }

  void login() {
    setState(() {
      loading = true;
    });
    _auth
        .createUserWithEmailAndPassword(
        email: _emailController.text.toString(),
        password: _passwordController.text.toString())
        .then((value) {
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }
}
