import 'package:flutter/material.dart';
import 'package:carobar/view/final_screen.dart';
import 'package:carobar/view/mechanics.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController paymentController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      dateController.text = selectedDate.toString(); // Update the date text field with the selected date
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      timeController.text = selectedTime.format(context); // Update the time text field with the selected time
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: const Text('Mechanify'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
              )
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'heading',
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 36.0,
        ),
        actions:  <Widget>[
          IconButton(
            icon: const Icon(Icons.car_repair_rounded),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/images/homefile.PNG'),

              ),
              const SizedBox(height: 25),
              Center(
                child: Container(
                  decoration: BoxDecoration (
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
                      )
                  ),
                  padding: const EdgeInsets.all(6),
                  child: Row(
                      children:  const <Widget>[
                        Expanded(
                          child:  Center(
                            child: Text('BOOKING DETAILS', style: TextStyle(

                              color: Colors.white,
                              fontSize: 26,
                              fontFamily: 'heading',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100,
                            ),
                              textAlign: TextAlign.start,
                            ),
                          ),

                        )
                      ]
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: dateController,
                decoration: const InputDecoration(
                  hintText: 'Enter Date',
                  hintStyle: TextStyle(color: Colors.teal, fontFamily: 'YourFont'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
                style: const TextStyle(color: Colors.teal, fontFamily: 'YourFont'),
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: timeController,
                decoration: const InputDecoration(
                  hintText: 'Select Time',
                  hintStyle: TextStyle(color: Colors.teal, fontFamily: 'YourFont'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
                style: const TextStyle(color: Colors.teal, fontFamily: 'YourFont'),
                readOnly: true,
                onTap: () => _selectTime(context),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=> const ThankYouScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade300,
                      ),
                      child: const Text('Make Payment'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}