import 'package:flutter/material.dart';
import 'package:tiket_wisata/pages/home_page.dart';
import 'package:tiket_wisata/widgets/reusable_button.dart';
import 'package:tiket_wisata/widgets/reusable_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableText(
              text: "Silakan login untuk melanjutkan",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 20),
            ReusableButton(
              text: "Login",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                // Aksi ketika tombol ditekan
              },
            ),
          ],
        ),
      ),
    );
  }
}
