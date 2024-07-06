import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prides_sales_and_lettings/Authentication/login.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        // to show animation
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Coloring.wte,
              ),
            ),
            Center(
                child: AnimatedBuilder(
              animation: _controller,
              child: Center(
                child: Image.asset(
                  "assets/yblogo.png",
                  fit: BoxFit.contain,
                  height: 15,
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: child,
                );
              },
            )),
          ],
        ));
  }

  // to show animation
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _animation = Tween<double>(
      begin: 0,
      end: 6,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );
    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LogIn()),
            (Route<dynamic> route) => false),
      );
    });
  }
}
