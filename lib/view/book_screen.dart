import 'package:flutter/material.dart';
import 'package:carobar/view/final_screen.dart';
import 'package:carobar/view/mechanics.dart';

class BookingPage extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController paymentController = TextEditingController();

  BookingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:
        IconButton(icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>  const MechanicList(),
                  )
              );
            },
            ),
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
            onPressed: () {},
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
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 30),
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
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage:  AssetImage('assets/images/asd.jpeg'),
              ),
            ),
            const SizedBox(height: 40),
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
          style: const TextStyle(color: Colors.teal),
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
          style: const TextStyle(color: Colors.teal),
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
          style: const TextStyle(color: Colors.teal),
        ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(onPressed: ()
                          {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context)=> const ThankYouScreen(),
                              ),
                            );

                          },
                          style:
                        ElevatedButton.styleFrom(

                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                        ),
                          child: const Text('Book',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      )
                    ),
                  )
            ]

        )
    ),
      ),
    );
  }
}