import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:juyostats/home_page.dart';
import 'package:juyostats/login_page.dart';
import 'package:juyostats/about_page.dart';
import 'package:juyostats/profile_crud.dart';
import 'package:juyostats/profile_page.dart';
import 'package:juyostats/setting_page.dart';
import 'package:juyostats/spdeneme.dart';
import 'package:search_page/search_page.dart';

class MyDrawer extends StatelessWidget {
   const MyDrawer({super.key});

   get user => FirebaseAuth.instance.currentUser!;

  // method to log user out
  void logUserOut(BuildContext context) {
    // pop drawer
    Navigator.pop(context);
    // pop app
    Navigator.pop(context);
    // go back to login page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(
          showRegisterPage: () {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: Column(
        children: [
          // Drawer header
          const DrawerHeader(
            child: Center(
              child: Icon(
                Icons.query_stats_rounded,
                color: Colors.black,
                size: 64,
              ),
            ),
          ),

          const SizedBox(height: 25),

          //profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.perm_identity_rounded,
                color: Colors.black,
              ),
              onTap: () {},
              title: Text(
                'X olarak giriş yapıldı',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          //home page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.home_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Ana Sayfa",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          //Search page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Arama",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.person_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileCrud(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.people_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Veri Girişi",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  SettingPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.settings_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Ana Sayfa",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),


          // ABOUT PAGE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.black,
                ),
                title: Text(
                  "Hakkında",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          // LOGOUT BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onTap: () => logUserOut(context),
              title: Text(
                "Çıkış Yap",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
