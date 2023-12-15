import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:juyostats/auth_page.dart';
import 'package:juyostats/login_page.dart';
import 'package:juyostats/home_page.dart';
import 'package:juyostats/match_page.dart';
import 'package:juyostats/profile_crud.dart';
import 'package:juyostats/setting_page.dart';
import 'package:juyostats/profile_page.dart';
import 'components/my_bottom_nav_bar.dart';
import 'components/my_drawer.dart';



  class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
          return HomePage();
          }else{
            return AuthPage();
          }
        }
        ) ,
      );
  }


class _MainPageState extends State<MainPage> {
  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected index
  // when the user taps on the bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // home page
    const HomePage(),

    // shop page
    const ShopPage(),

    // profile page
    const ProfilePage(),

    //profile crud
    const ProfileCrud(),

    // setting page
     const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade800,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'JUYO-Stats',
          style: TextStyle(color: Colors.grey.shade800),
        ),
      ),
      drawer: const MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
