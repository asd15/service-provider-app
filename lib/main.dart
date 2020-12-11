import 'package:flutter/material.dart';
import 'package:serviceproviderapp/composition_root.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  CompositionRoot.configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color.fromARGB(255, 251, 176, 59),
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CompositionRoot.composeAuthUi(),
    );
  }
}
