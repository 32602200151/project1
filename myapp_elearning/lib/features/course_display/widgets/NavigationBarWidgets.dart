import 'package:flutter/material.dart';
import '../../../core/constants/color.dart'; // Ganti dengan jalur yang sesuai untuk AppColors

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Menambah type
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_cozy),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: 0,
      onTap: (index) {
        // Tambahkan logika navigasi jika diperlukan
      },
      backgroundColor: AppColors.secondaryColor, // Pastikan backgroundColor hitam
      unselectedItemColor: Colors.white,
      selectedItemColor: AppColors.primaryColor, // Warna item terpilih
    );
  }
}
