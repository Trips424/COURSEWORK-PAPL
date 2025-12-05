import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 700;

              return isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _sections(),
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: _sections(),
                    );
            },
          ),
          const SizedBox(height: 40),
          const Text(
            "© 2025, upsu-store",
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }

  List<Widget> _sections() {
    return [
      const SizedBox(
        width: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Opening Hours",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 12),
            Text("❄️ Winter Break Closure Dates ❄️",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Closing 4pm 19/12/2025"),
            Text("Reopening 10am 05/01/2026"),
            Text("Last post date: 12pm on 18/12/2025"),
            SizedBox(height: 12),
            Text("-----------------------------"),
            SizedBox(height: 12),
            Text("(Term Time)", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Monday - Friday 10am - 4pm"),
            SizedBox(height: 8),
            Text("(Outside of Term Time / Consolidation Weeks)",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Monday - Friday 10am - 3pm"),
            SizedBox(height: 12),
            Text("Purchase online 24/7"),
          ],
        ),
      ),
      SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Help and Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),
            _footerButton("Search"),
            _footerButton("Terms & Conditions of Sale"),
            _footerButton("Policy"),
            _footerButton("Returns"),
          ],
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Latest Offers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                // Email input
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: Color(0xFF4d2963),
                  child: const Center(
                    child: Text(
                      "SUBSCRIBE",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }

  Widget _footerButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
