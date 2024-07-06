import 'package:flutter/material.dart';
import 'package:prides_sales_and_lettings/SplashScreen/splash_screen.dart';

void main() {
  runApp(const PropertyManagement());
}

class PropertyManagement extends StatefulWidget {
  const PropertyManagement({super.key});

  @override
  State<PropertyManagement> createState() => _PropertyManagementState();
}

class _PropertyManagementState extends State<PropertyManagement> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
