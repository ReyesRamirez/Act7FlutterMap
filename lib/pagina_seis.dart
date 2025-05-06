//! Time Picker &&& Date picker(91)
import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  _Widget078State createState() {
    return _Widget078State();
  }
}

class _Widget078State extends State<PantallaSeis> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Seis')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
            ),
            ElevatedButton(
              child: const Text("Choose Date"),
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
