// import 'package:flutter/material.dart';
// import 'counter_form.dart';
// void main() => runApp(const Myapp());

// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//    @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: counter_form(),
//       debugShowCheckedModeBanner: false, // Corrected property name
//     );
//   }
//   }

import 'package:flutter/material.dart';
import 'counter_form.dart'; // Import the CounterForm file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
