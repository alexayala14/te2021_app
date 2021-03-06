import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/splash_screen_view.dart';
import 'package:te2021_app/widgets/Pantalla.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SplashScreenView(
      navigateRoute: Pantalla(),
      duration: 5000,
      imageSize: 400,
      imageSrc: "assets/feliz1.gif",
      text: "Correcto",
      //textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.black,
    ),
    );

  }
}