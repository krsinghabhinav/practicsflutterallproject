import 'package:flutter/material.dart';

class Buildappbar extends StatefulWidget {
  const Buildappbar({super.key});

  @override
  State<Buildappbar> createState() => _BuildappbarState();
}

class _BuildappbarState extends State<Buildappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFFFFC300),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Blinkit in',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
