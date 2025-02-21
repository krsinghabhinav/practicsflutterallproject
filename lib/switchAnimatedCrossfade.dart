// import 'package:flutter/material.dart';

// class Switchanimatedcrossfade extends StatefulWidget {
//   const Switchanimatedcrossfade({super.key});

//   @override
//   State<Switchanimatedcrossfade> createState() =>
//       _SwitchanimatedcrossfadeState();
// }

// class _SwitchanimatedcrossfadeState extends State<Switchanimatedcrossfade> {
//   bool isTrue = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 100,
//             width: double.infinity,
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 isTrue = !isTrue;
//               });
//             },
//             child: Text("Switch image"),
//           ),
//           AnimatedCrossFade(
//             firstChild: Icon(
//               Icons.add,
//               size: 100,
//             ),
//             secondChild: Icon(
//               Icons.person,
//               size: 100,
//             ),
//             crossFadeState:
//                 isTrue ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//             duration: Duration(milliseconds: 1000),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SwitchAnimatedCrossFade extends StatefulWidget {
//   const SwitchAnimatedCrossFade({super.key});

//   @override
//   State<SwitchAnimatedCrossFade> createState() =>
//       _SwitchAnimatedCrossFadeState();
// }

// class _SwitchAnimatedCrossFadeState extends State<SwitchAnimatedCrossFade> {
//   int currentIndex = 0; // Track current icon index
//   int nextIndex = 1; // Track next icon index

//   // List of 10 icons
//   final List<IconData> iconList = [
//     Icons.home,
//     Icons.star,
//     Icons.favorite,
//     Icons.settings,
//     Icons.camera,
//     Icons.access_alarm,
//     Icons.lightbulb,
//     Icons.shopping_cart,
//     Icons.email,
//     Icons.music_note,
//   ];

//   void switchIcon() {
//     setState(() {
//       currentIndex = nextIndex;
//       nextIndex = (nextIndex + 1) % iconList.length; // Loop through icons
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Multiple Icons Switch")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedCrossFade(
//               firstChild:
//                   Icon(iconList[currentIndex], size: 100, color: Colors.blue),
//               secondChild:
//                   Icon(iconList[nextIndex], size: 100, color: Colors.red),
//               crossFadeState: CrossFadeState.showFirst,
//               duration: const Duration(milliseconds: 500),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: switchIcon,
//               child: const Text("Switch Icon"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Switchanimatedcrossfade extends StatefulWidget {
  const Switchanimatedcrossfade({super.key});

  @override
  State<Switchanimatedcrossfade> createState() =>
      _SwitchanimatedcrossfadeState();
}

class _SwitchanimatedcrossfadeState extends State<Switchanimatedcrossfade> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: TextButton(
              key: ValueKey<bool>(isTrue),
              onPressed: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              child: Text(
                isTrue ? "Switch to Person Icon" : "Switch to Add Icon",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Column(
              children: [
                Icon(
                  Icons.add,
                  size: 100,
                ),
                SizedBox(height: 20),
                Text('Add Icon', style: TextStyle(fontSize: 20))
              ],
            ),
            secondChild: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 100,
                ),
                SizedBox(height: 20),
                Text('Person Icon', style: TextStyle(fontSize: 20))
              ],
            ),
            crossFadeState:
                isTrue ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 1000),
          ),
        ],
      ),
    );
  }
}
