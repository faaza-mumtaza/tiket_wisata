import 'package:flutter/material.dart';
import 'package:tiket_wisata/widgets/nav_item.dart';
/* import 'package:tiket_wisata/pages/home_page.dart'; */
import 'package:tiket_wisata/pages/search_page.dart';
import 'package:tiket_wisata/pages/profile_page.dart';
import 'package:tiket_wisata/pages/order_page.dart'; // Tambahkan import ini


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tiket Wisata')),
      body: Center(child: const Text('Selamat datang di aplikasi!')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: NavItem(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderPage()), // Sesuaikan navigasi ke OrderPage
                );
              },
            ),
            label: '',
          ),

          /* BottomNavigationBarItem(
            icon: NavItem(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            label: '',
          ), */

          BottomNavigationBarItem(
            icon: NavItem(
              icon: Icons.search,
              label: 'Search',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavItem(
              icon: Icons.person,
              label: 'Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          // Handle navigation based on index
        },
      ),
    );
  }
}