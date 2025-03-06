import 'package:flutter/material.dart';
import 'package:tiket_wisata/pages/main_page.dart';
import 'package:tiket_wisata/widgets/reusable_button.dart';
import 'package:tiket_wisata/widgets/reusable_text.dart';
import 'package:tiket_wisata/extensions/navigator_extensions.dart';


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
                context.navigateToReplacement(const MainPage());
              },

              /* onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
                // Aksi ketika tombol ditekan
              }, */

            ),
          ],
        ),
      ),
    );
  }
}
