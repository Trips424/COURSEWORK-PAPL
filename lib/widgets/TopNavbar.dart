import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final void Function(String route) onNavigate;

  const NavBar({super.key, required this.onNavigate});


  @override
  State<NavBar> createState() => _NavBarState();

  class _TopNavbarState extends State<NavBar> {
    bool menuOpen = false;

    @override
     Widget build(BuildContext context) {
      // Implementation of the build method
      final bool isMobile = MediaQuery.of(context).size.width < 750;

      return Column(
        children: [
          

        ]
      )

        

      );
  }

}
