import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  get user => FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),

          child: ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Center(
              child:Text(
                style: TextStyle(fontWeight: FontWeight.bold),
                  'U-20’de Şampiyon Belçika'),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child:
                  Center(
                    child: Image.network('https://i.fanatik.com.tr/i/fanatik/75/0x410/6426a2dd80a0332404a53601.jpg'),
                  ),

              ),
              SizedBox(height: 20),

              Center(
                child:Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Ankaragücülü Berke Yıldırım Devlerin Radarında!"),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Center(
                    child:
                    Image.network('https://i.fanatik.com.tr/i/fanatik/75/0x410/63c48e6a45d2a079bcf3d080.gif')
                ),
              ),
              SizedBox(height: 20),

              Center(
                child:Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "TFF Tüm Maçları Erteledi"),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Center(
                    child:
                    Image.network('https://i.fanatik.com.tr/i/fanatik/75/0x410/63e23a2180a03313dc8372ae.jpg')
                ),
              ),
              SizedBox(height: 20),

              Center(
                child:Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Bakan Kasapoğlu: İzmir'in 50 yıllık özlemini bugün gerçekleştiriyoruz."),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Center(
                    child:
                    Image.network('https://i.fanatik.com.tr/i/fanatik/75/0x192/645bdb8d80a033229c9b02c2.jpg')
                ),
              ),
              SizedBox(height: 20),

              Center(
                child:Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Kadın Futbol Süper Ligi şampiyonu FOMGET'e coşkulu karşılama."),
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: Center(
                    child:
                    Image.network('https://i.fanatik.com.tr/i/fanatik/75/0x192/647e45d080a0330aec2635e8.jpg')
                ),
              ),





            ],
          ),




      ),

    );
  }
}




