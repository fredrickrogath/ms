import 'package:flutter/material.dart';

class Shared extends StatelessWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('shared')),
    );
  }
}
