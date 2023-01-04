import 'package:e_commerce_ui/views/bottom_navigation.dart';
import 'package:e_commerce_ui/views/categoryPage.dart';
import 'package:flutter/material.dart';

import 'views/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final pages = [CategoryPage(), ProductScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 227, 230),
      bottomNavigationBar: bottomNavigationBar(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, Widget? _) {
            return pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
