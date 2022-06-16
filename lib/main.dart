import 'package:delivery_app_ui/screens/view/cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cart UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CartScreen(),
    );
  }
}
