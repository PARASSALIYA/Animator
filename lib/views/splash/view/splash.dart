import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2500),
              top: -100.0,
              right: -100.0,
              bottom: -100.0,
              child: Image.asset(
                'assets/images/earth_home.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const AnimatedPositioned(
              duration: Duration(milliseconds: 2500),
              left: 160,
              top: 680,
              child: Text(
                "Solar System",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFF0090CE),
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
