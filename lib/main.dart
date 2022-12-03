import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xo/view_model/board.dart';
import 'package:xo/views/board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BoardVM(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const GameBoard(),
      ),
    );
  }
}
