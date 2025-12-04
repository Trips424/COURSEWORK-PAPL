import 'package:flutter/material.dart';

class TopNavbar extends StatelessWidget {
  final void Function(String route) onNavigate;

  const TopNavbar({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 750;

    return Container(
      color: Colors.white,
      child:Column(
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        )
      )
    );
    )
  }
}
