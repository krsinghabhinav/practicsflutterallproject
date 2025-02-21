// import 'package:flutter/material.dart';

// class AnimatedAlignExample extends StatefulWidget {
//   const AnimatedAlignExample({super.key});

//   @override
//   State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
// }

// class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
//   bool isExpanded = false; // Controls the movement

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Animated Align'),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: 500,
//         color: Colors.red,
//         child: AnimatedAlign(
//           alignment: isExpanded ? Alignment.bottomRight : Alignment.topLeft,
//           duration: const Duration(seconds: 2),
//           curve: Curves.fastOutSlowIn,
//           child: const FlutterLogo(
//             size: 100,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             isExpanded = !isExpanded; // Toggle position on click
//           });
//         },
//         child: const Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool isExpanded = false; // Toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enhanced Animated Align')),
      body: AnimatedContainer(
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color: isExpanded
              ? Colors.blue
              : Colors.red, // Background color animation
          borderRadius:
              BorderRadius.circular(isExpanded ? 30 : 0), // Shape animation
        ),
        child: AnimatedAlign(
          alignment: isExpanded ? Alignment.bottomRight : Alignment.topLeft,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: AnimatedOpacity(
            opacity: isExpanded ? 1.0 : 0.5, // Opacity Animation
            duration: const Duration(seconds: 2),
            child: AnimatedRotation(
              turns: isExpanded ? 1 : 0, // Rotate Animation (1 full turn)
              duration: const Duration(seconds: 2),
              child: AnimatedScale(
                scale: isExpanded ? 1.5 : 1, // Scale Animation (Grow/Shrink)
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(size: 100),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isExpanded = !isExpanded; // Toggle animations
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
