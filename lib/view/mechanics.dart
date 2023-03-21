import 'package:flutter/material.dart';
import 'package:carobar/view/components/book_button.dart';

    class MechanicList extends StatelessWidget {
  const MechanicList({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:
        IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        title: const Text(
          'Mechanify',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        titleTextStyle: const TextStyle(
          fontSize: 45,
          fontFamily: 'Ariel',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.image_rounded),
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
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: const <Widget>[
            BookButton(),
            SizedBox(height: 16),
            BookButton(),
            SizedBox(height: 16),
            BookButton(),

      ]
      )
      )
    );
    }
    }

