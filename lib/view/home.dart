import 'package:copyd/screen/camera_view.dart';
import 'package:copyd/screen/dashboard_view.dart';
import 'package:copyd/screen/home_screen.dart';
import 'package:copyd/screen/setting_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: const Color(0xff277ebe),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue[500],
          unselectedItemColor: Colors.blue[200],
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'DashBoard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
          ],
        ),
        backgroundColor: const Color(0xff277ebe),
        body: selectedIndex == 0
            ? HomeViewScreen(time: time)
            : selectedIndex == 1
                ? DashView(time: time)
                : selectedIndex == 2
                    ? const ScreenView()
                    : const CameraView(),
      ),
    );
  }
}
