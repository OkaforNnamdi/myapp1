import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'body_file.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "open art.",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const MyAppBar(),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Hamburger(),
      ),
      body: const AppBody(),
    );
  }
}
