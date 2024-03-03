import 'package:flutter/material.dart';

void main() => runApp(const Youtube());

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          // body: ,
          // bottomNavigationBar: ,
        ),
      ),
    );
  }
}
