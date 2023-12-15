import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:juyostats/auth_page.dart';
import 'package:juyostats/login_page.dart';
import 'package:juyostats/home_page.dart';
import 'package:juyostats/main_page.dart';
import 'package:juyostats/match_page.dart';
import 'package:juyostats/profile_crud.dart';
import 'package:juyostats/setting_page.dart';
import 'package:juyostats/profile_page.dart';
import 'components/my_bottom_nav_bar.dart';
import 'components/my_drawer.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  MainPage(),
              ),
            );
          },
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text(
          'Yardım',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: <Widget> [
            Image.network(
              "http://pngimagesfree.com/Football/football_player_png_image.png",
              height: 250,
              width: 250,
            ),

            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Uygulamayı kullanmak için sol tarafta açılan panelden veya aşağıdaki navigasyon barından menüler arasından gezebilirsiniz.'
                  , )
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Ana sayfadan genç sporcular hakkında haberlere ulaşabilirsiniz. '
                  , )
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Arama sayfasında öğrenci profillerine ulaşabilir ve filtreli bir şekilde arama yapabilirsiniz. '
                  , )
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Profil sayfasından profilleri ayrıntılı görebilir ve ayrıntılı profil sayfasına ulaşabilirsiniz.'
                  , )
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Düzenleme sayfasından profil eklemesi veya düzenlemesi yapabilirsiniz.(Sadece yetkililer için) '
                  , )
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'Ayarlar kısmından ise çıkış yapabilirsiniz.'
                  , )
            ),
          ],
        ),
      ),
    );
  }
}
