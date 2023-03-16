import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Mechanify'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.black, Colors.teal]
              )
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontFamily: 'Courier',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 42.0,
        ),

        leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu_rounded,color: Colors.black,),

                onPressed: () {Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }
        ),
      ),
    );
  }
}