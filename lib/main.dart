import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:photo_album/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signInAnonymously(); // Sign in anonymously

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
