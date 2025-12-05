import 'package:flutter/material.dart';
import 'package:union_shop/widgets/top_navbar.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNavbar(
          onNavigate: (route) {
            Navigator.pushNamed(context, route);
          },
        ),

        // 📌 Then the Scaffold (AppBar + content)
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Contact Us'),
              backgroundColor: const Color(0xFF6200EE),
            ),
            body: const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Email: info@port.ac.uk\n\n'
                  'Phone:+44 (0)23 9284 8484\n\n'
                  'Lines are open Monday–Thursday 8.30am–5.15pm, Friday 8.30am–4.15pm.\n\n\n\n'
                  'Our Postal Address\n\n'
                  'University of Portsmouth Mercantile House\n\n'
                  'Hampshire Terrace, Portsmouth, PO1 2EG',
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
