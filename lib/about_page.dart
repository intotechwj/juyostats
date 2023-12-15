import 'package:flutter/material.dart';



class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text(
          'Hakkında',
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

          const Center(
              child: Text(
            textAlign: TextAlign.left,
            'Ülkemizde uzun süredir eksikliği görülen spor başarılarının ana sebebi altyapıdan yetişen nitelikli sporcuların '
              'profesyonel kulüp ya da kuruluşlar tarafından fark edilmemesi ve değerinin anlaşılamamasıdır. Ülkemizdeki “Scout” yani sporcu '
              'yeteneklerini izleyen ve bildiren kişilerin sınırlı imkanları ancak belli sporcuları izlemeye yetmektedir. Altyapıların, keza altyapılar kadar önemli olan bölgesel ligler'
              ' ve küçük yaş liglerinin izlenmesini ya da fikir edinilmesini kolaylaştıracak bir sisteme ihtiyaç duyulmaktadır. '
              'Ülkemizde geçmişten beri uygulanan ve nice öğrenciye umut olan sporcu bursu uygulaması '
              'altyapıların içinde bulunduğu sorun ile de benzer bir durumdadır. Ortaokuldan liseye, liseden üniversiteye, sporcu '
              'bursu almak için çabalayan öğrenciler altyapılarda izlenmeyi bekleyen yetenekli sporcular ile benzer konumdadırlar. '
              'Bu iki önemli konu sorunun büyüklüğünü ve konunun ne kadar önemli olduğunu göstermektedir.', )


          ),
        ],
      ),
      ),
    );
  }
}
