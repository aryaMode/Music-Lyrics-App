import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: _buildTheme(Brightness.dark),
      home: const NoInternetPage(),
    );
  }
}

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: Image.asset(name),
              backgroundColor: Colors.yellow.shade700,
            ),
            const Text("No Internet"),
          ],
        ),
      ),
    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme =
      ThemeData(brightness: brightness, primarySwatch: Colors.amber);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
  );
}
