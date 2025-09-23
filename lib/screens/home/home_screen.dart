import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ObjectScan - 3D Object Scanning App"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Text(
          "Welcome to ObjectScan - 3D Object Scanning App",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
