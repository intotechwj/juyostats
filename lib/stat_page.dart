import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:juyostats/bar_graph/bar_graph.dart';
import 'package:juyostats/components/my_bottom_nav_bar.dart';
import 'package:juyostats/home_page.dart';
import 'package:juyostats/main_page.dart';
import 'package:juyostats/profile_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:charts_flutter_new/flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/painting/text_style.dart';

class StatPage extends StatefulWidget {
  const StatPage({Key? key}) : super(key: key);

  @override
  State<StatPage> createState() => _StatPageState();

}

class _StatPageState extends State<StatPage> {
  Query dbRef = FirebaseDatabase.instance.ref().child('users');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('users');

  List <double> statvalues = [
    18,
    12,
    10,
    3,
    5,
    6,
    5,
    7,
    2,
    4,
  ];


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
                builder: (context) => const MainPage(),
              ),
            );
          },
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Colors.grey[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://www.pngall.com/wp-content/uploads/5/Profile-Male-PNG.png',
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.grey[200],
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('  Ad: Yasin  '),

                                  Text('Soyad: Çaçur'),
                                  
                                  Text(' Yaş: 15')
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                    Center(child: Text('Grafiksel Analiz')),
                      //graph bar
                        SizedBox(
                            height: 280,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyBarGraph(
                                statValues: statvalues,
                              ),
                            ),
                        ),
                        SizedBox(height: 5,),
                        
                        Center(child: Text('M: Maç  G: Gol  A: Asist  S: Sarı  K: Kırmızı  22: 2022  23: 2023')),

                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
