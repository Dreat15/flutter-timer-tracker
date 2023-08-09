import 'package:flutter/material.dart';

class OverviewRoute extends StatelessWidget {
  const OverviewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        leading: GestureDetector(
        onTap: () { /* Write listener code here */ },
        child: const Icon(
        Icons.menu,  // add custom icons also
            ),
          ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}