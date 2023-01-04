import 'package:e_commerce_ui/main.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationBar() {
  return ValueListenableBuilder(
      valueListenable: HomePage.selectedIndexNotifier,
      builder: ((context, selectedIndex, child) {
        return BottomNavigationBar(
            currentIndex: selectedIndex,
            selectedItemColor: Color.fromARGB(255, 2, 135, 153),
            unselectedItemColor: Colors.grey,
            onTap: (newIndex) {
              HomePage.selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    // color: Color.fromARGB(255, 2, 135, 153),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: "Products"),
            ]);
      }));
}
