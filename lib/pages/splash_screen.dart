import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/colors.dart';
import 'package:tiket_wisata/gen/assets.gen.dart';
import 'package:tiket_wisata/pages/login_page.dart';
import 'package:tiket_wisata/widgets/reusable_text.dart';
import 'package:tiket_wisata/extensions/navigator_extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
     context.navigateToReplacement(const LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.idn.image(width: 200),
          SizedBox(height: 20),
          ReusableText(
            text: "Selamat Datang di Aplikasi Tiket Wisata!",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
