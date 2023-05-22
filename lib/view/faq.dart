import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: ListView(
          children: const <Widget>[
            FAQItem(
              question: 'How can I book an appointment with a mechanic through the app?',
              answer: 'To book an appointment with a mechanic through our app, follow these steps:\n\n'
                  '1. Open the app on your device.\n'
                  '2. Sign in to your account or create a new account if you haven\'t done so already.\n'
                  '3. Navigate to the booking section.\n'
                  '4. Select the date and time that works best for you.\n'
                  '5. Choose the type of service you require.\n'
                  '6. Select a mechanic from the available options.\n'
                  '7. Review your booking details and confirm your appointment.',
            ),
            FAQItem(
              question: 'Can I cancel or reschedule my appointment?',
              answer: 'Yes, you can cancel or reschedule your appointment through the app. '
                  'Simply open the app, go to your bookings, and select the appointment you want to modify. '
                  'From there, you will have options to cancel or reschedule the appointment based on the '
                  'mechanic\'s availability and the cancellation policy.',
            ),
            FAQItem(
              question: 'What if I need emergency roadside assistance?',
              answer: 'Our app provides emergency roadside assistance services. '
                  'If you find yourself in need of immediate help, open the app, and look for the '
                  'emergency assistance option. Provide the necessary details, and a nearby mechanic '
                  'will be dispatched to assist you as soon as possible.',
            ),
            FAQItem(
              question: 'How can I pay for the services?',
              answer: 'Our app supports multiple payment options. You can pay for the services '
                  'using credit/debit cards, digital wallets, or other available payment methods '
                  'integrated into the app. The payment process is secure and user-friendly.',
            ),
            FAQItem(
              question: 'Are the mechanics on the app certified and experienced?',
              answer: 'We ensure that all mechanics listed on our app '
                  'are certified professionals with relevant experience. Before onboarding a mechanic, '
                  'we verify their credentials and check their work history to maintain '
                  'service quality and customer satisfaction.',
            ),
            FAQItem(
              question: 'Can I provide feedback or rate the mechanics?',
              answer: 'Yes, we encourage users to provide feedback and rate the mechanics '
                  'after the service is completed. You can rate your experience and leave a review '
                  'to help other users make informed decisions while choosing a mechanic.',
            ),
            FAQItem(
              question: 'How do I contact customer support?',
              answer: 'If you have any questions or need assistance, you can contact our customer support '
                  'team through the app. Go to the "Contact Us" section and choose the preferred method of contact. '
                  'Our support team will be happy to assist you.',
            ),


// Add more FAQItems as needed
          ],
        ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({super.key, required this.question, required this.answer});

  @override
  FAQItemState createState() => FAQItemState();
}

class FAQItemState extends State<FAQItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[Colors.teal.shade100, Colors.teal.shade300]
    )
    ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: Text(
              widget.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          if (_expanded)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SingleChildScrollView(
                child: Text(widget.answer),
              ),
            ),
        ],
      ),
        )
    );
  }
}