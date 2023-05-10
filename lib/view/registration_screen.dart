import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/text.dart';

const TextStyle kDefaultTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 16, // Decreased font size to 16
  fontWeight: FontWeight.w600,
  color: Colors.black, // Set the text color to black
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter RegistrationPage',
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        'Mechanify',
                        style: kDefaultTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextInput(
                              icon: Icons.phone_sharp,
                              hint: 'Phone number',
                              inputType: TextInputType.number,
                            ),
                            TextInput(
                              icon: Icons.mail,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                            ),
                            TextInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputType: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  width: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle register button press
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                padding: EdgeInsets.symmetric(vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.black87),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: kButtonTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
