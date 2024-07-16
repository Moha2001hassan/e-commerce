import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'utils/helpers/my_helper_functions.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  var _currentIndex = 0;

  final List<String> _labels = [
    "Home",
    "Store",
    "Wishlist",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        backgroundColor: dark ? Colors.black : Colors.white,
        indicatorColor: dark ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
        //elevation: 0,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
          NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
          NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        ],
      ),
      body: Center(
        child: Text(
          _labels[_currentIndex],
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
