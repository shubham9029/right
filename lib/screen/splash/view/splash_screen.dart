import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){Navigator.pushReplacementNamed(context, 'login');});
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("💬",style: TextStyle(fontSize: 150),))
    );
  }
}
