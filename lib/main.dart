import 'package:flutter/material.dart';
import 'package:saporidiitalia/screens/home.dart';

void main() {
  runApp(const SaporiDiItalia());
}

class SaporiDiItalia extends StatelessWidget {
  const SaporiDiItalia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Panucci Ristorante",
      theme: ThemeData(colorSchemeSeed: Colors.purple, useMaterial3: true),
      home: const Home(),
    );
  }
}
