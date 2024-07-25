import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/home/home.dart';
import 'features/personalization/screens/profile/profile.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wishlist.dart';
import 'utils/helpers/my_helper_functions.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  var _currentIndex = 0;

  // List of widgets corresponding to each navigation destination
  final List<Widget> _pages = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
    //const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        backgroundColor: dark ? Colors.black : Colors.white,
        indicatorColor: dark
            ? Colors.white.withOpacity(0.1)
            : Colors.black.withOpacity(0.1),
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
          NavigationDestination(icon: Icon(Iconsax.user), label: "Settings"),
          //NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
