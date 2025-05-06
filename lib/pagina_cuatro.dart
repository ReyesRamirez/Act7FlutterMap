//! CloseButton
import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Cuatro')),
      body: Center(
        child: CloseButton(
          color: Colors.red,
          onPressed: () {
            debugPrint("Do something");
          },
        ),
      ),
    );
  }
}
