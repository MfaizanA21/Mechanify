import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black54, Colors.black45],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.lighten,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/111.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
