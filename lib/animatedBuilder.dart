import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(); // Start animation
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder Demo'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          child: const FlutterLogo(size: 100), // Child remains constant
          builder: (context, child) {
            return Transform.rotate(
              angle: _animationController.value * 5.0 * pi, // Rotate using pi
              child: child, // Pass the constant child
            );
          },
        ),
      ),
    );
  }
}
