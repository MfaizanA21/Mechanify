import 'package:flutter/material.dart';
import 'home_screen.dart';

class Funny extends StatelessWidget {
  const Funny({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
        body: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context)=> const Home(),
                  ),
                );
              },
              child: const Center(// Set the background color to teal
                child: BackgroundImage(),
              ),
            ),
          ],
        ),
      );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({ super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.tealAccent, Colors.teal],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
            child: Image.asset('assets/images/fun.PNG'),
          ),
      );
  }
}
