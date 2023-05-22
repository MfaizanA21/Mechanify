import 'package:flutter/material.dart';
import 'package:carobar/view/book_screen.dart';

class  BookButton extends StatelessWidget {
  final String name;
  final String contact;
  const BookButton(this.name,this.contact,{super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
         contentPadding:
         const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
         leading: const CircleAvatar(
           backgroundColor: Colors.black,
           child: Icon(Icons.person),
         ),
         title:  Text('$name',
             style: const TextStyle(
                 color: Colors.teal, fontStyle: FontStyle.normal)),
         subtitle:  Text('$contact',
             style: const TextStyle(
                 color: Colors.teal, fontStyle: FontStyle.normal)),
         trailing: ElevatedButton.icon(
           onPressed: () {
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (context)=> BookingPage(),
               ),
             );
           },

           //color: Colors.white
           icon: const Icon(
             Icons.book,
             color: Colors.black,
           ),
           label: const Text('Book', style: TextStyle(color: Colors.black)),
         ),
         onTap: () {
           const BoxConstraints.expand(height: 30, width: 16);

         },
         shape: const RoundedRectangleBorder(
             borderRadius: BorderRadius.vertical(
                 top: Radius.circular(20),
                 bottom: Radius.circular(20)),
             side: BorderSide(color: Colors.teal, width: 3)),
         tileColor: Colors.black
     );
  }
}
