import 'package:delivery_app/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() {
    return _NavigationBarScreenState();
  }
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  final Map<String, String> _icons = {
    'home': 'assets/images/grid.svg', // Home icon
    'cart': 'assets/images/cart.svg', // cart icon
    'user': 'assets/images/user.svg', // profile icon
  };

  int _currentIndex = 0;

  void _onTapTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    const CategoriesScreen(),
    const Center(
      child: Text("Cart Screen"),
    ),
    const Center(
      child: Text("User Screen"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor:
            Theme.of(context).colorScheme.primary, // Color for selected icon
        unselectedItemColor:
            Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
        // Color for unselected icon
        backgroundColor: Theme.of(context)
            .colorScheme
            .surface, // Background color of the BottomNavigationBar

        onTap: _onTapTapped,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(_icons['home']!,
                colorFilter: _currentIndex == 0
                    ? const ColorFilter.mode(
                        Color.fromRGBO(114, 3, 255,
                            1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn)
                    : ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn) //

                ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(_icons['cart']!,
                colorFilter: _currentIndex == 1
                    ? const ColorFilter.mode(
                        Color.fromRGBO(114, 3, 255,
                            1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn)
                    : ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn) //
                ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(_icons['user']!,
                colorFilter: _currentIndex == 2
                    ? const ColorFilter.mode(
                        const Color.fromRGBO(114, 3, 255,
                            1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn)
                    : ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary.withOpacity(1),
                        BlendMode.srcIn) //
                ),
          ),
        ],
      ),
    );
  }
}
