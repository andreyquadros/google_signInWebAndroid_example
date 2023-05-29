import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeLoginScreen extends StatefulWidget {
  const HomeLoginScreen({Key? key}) : super(key: key);

  @override
  State<HomeLoginScreen> createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {

  Future<void> deslogarFirebase() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Logada'),
        actions: [
          GestureDetector(
            onTap: deslogarFirebase,
              child: Icon(Icons.logout)),
        ],
      ),
    );
  }
}
