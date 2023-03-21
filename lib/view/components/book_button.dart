import 'package:flutter/material.dart';
import 'package:carobar/view/book_screen.dart';

class  BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListTile(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            leading: const CircleAvatar(
              child: Icon(Icons.image_rounded),
              backgroundColor: Colors.black,
            ),
            title: const Text('Name',
                style: TextStyle(
                    color: Colors.teal, fontStyle: FontStyle.italic)),
            subtitle: const Text('Number',
                style: TextStyle(
                    color: Colors.teal, fontStyle: FontStyle.italic)),
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

            },
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(250),
                    bottom: Radius.circular(250)),
                side: BorderSide(color: Colors.teal, width: 3)),
            tileColor: Colors.black
        ),
    );
  }
}
