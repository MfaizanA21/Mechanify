import 'package:flutter/material.dart';
import 'package:carobar/view/final_screen.dart';

class BookingPage extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController paymentController = TextEditingController();

  BookingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 50),
          const Center(
            child: Text(
              'Schedule Meeting',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 40,
            backgroundImage:  AssetImage('assets/images/asd.jpeg'),
          ),
          const SizedBox(height: 50),
       TextField(
        controller: dateController,
        decoration: const InputDecoration(
          hintText: 'Enter Date',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
        style: TextStyle(color: Colors.teal),
      ),
      const SizedBox(height: 20),
      TextField(
        controller: timeController,
        decoration: const InputDecoration(
          hintText: 'Select Time',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
        style: TextStyle(color: Colors.teal),
      ),
      const SizedBox(height: 20),
      TextField(
        controller: paymentController,
        decoration: const InputDecoration(
          hintText: 'Enter Payment',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
        style: TextStyle(color: Colors.teal),
      ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(onPressed: ()
                      {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=> ThankYouScreen(),
                          ),
                        );

                      },
                      style:
                    ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )

                    ),
                      child: const Text('Book',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                  )
                )
          ]

      )
    ),
    );
  }
}