import 'package:flutter/material.dart';
import 'package:juyostats/stat_page.dart';
import 'package:search_page/search_page.dart';

class Person implements Comparable<Person> {
  final String name, surname, position;
  final num age, goal, asist;

  const Person(
      this.name, this.surname, this.age, this.position, this.goal, this.asist);

  @override
  int compareTo(Person other) => name.compareTo(other.name);
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const people = [
    Person('Yasin', 'Çaçur', 15, 'Forvet', 10, 5),
    Person('Burak', 'Yayla', 15, 'Kaleci', 0, 0),
    Person('Turgay', 'Çoban', 13, 'Kaleci', 0, 0),
    Person('Cihat', 'Sen', 15, 'Kaleci', 0, 0),
    Person('Mehmet', 'Özgün', 12, 'Kaleci', 0, 0),
    Person('Yemliha', 'Gül', 15, 'Kaleci', 0, 0),
    Person('Murat', 'Balko', 13, 'Kaleci', 0, 0),
    Person('Oktay', 'Aslan', 11, 'Kaleci', 0, 0),
    Person('Hasan', 'Çetiner', 13, 'Kaleci', 0, 0),
    Person('Ilhan', 'Karacan', 16, 'Kaleci', 0, 0),
    Person('Ertugrul', 'Çetiner', 17, 'Kaleci', 0, 0),
    Person('Volkan', 'Öztürk', 12, 'Kaleci', 0, 0),
    Person('Nihat', 'Koyun', 16, 'Kaleci', 0, 0),
    Person('Ibrahim', 'Durmusoglu', 12, 'Kaleci', 0, 0),
    Person('Mustafa', 'Karacan', 11, 'Kaleci', 0, 0),
    Person('Abdullah', 'Gokce', 17, 'Kaleci', 0, 0),
    Person('Nazmi', 'Ergün', 14, 'Kaleci', 0, 0),
    Person('Mert', 'Mugla', 15, 'Kaleci', 0, 0),
    Person('Ahmet', 'Duman', 15, 'Kaleci', 0, 0),
    Person('Ali', 'Bayrakli', 13, 'Kaleci', 0, 0),
    Person('Mehtap', 'Simsek', 13, 'Kaleci', 0, 0),
    Person('Yilmaz', 'Çelik', 16, 'Kaleci', 0, 0),
    Person('Tekin', 'Sayin', 11, 'Kaleci', 0, 0),
    Person('Ahmet', 'Kartal', 13, 'Kaleci', 0, 0),
    Person('Yakup', 'Karaca', 11, 'Kaleci', 0, 0),
    Person('Ümit', 'Özdemir', 15, 'Kaleci', 0, 0),
    Person('Taner', 'Çelik', 14, 'Kaleci', 0, 0),
    Person('Ahmet', 'Alihan', 12, 'Kaleci', 0, 0),
    Person('Serdar', 'Aydogdu', 11, 'Kaleci', 0, 0),
    Person('Ibrahim', 'Çelik', 13, 'Kaleci', 0, 0),
    Person('Ahmet', 'Can', 15, 'Kaleci', 0, 0),
    Person('Mehmet', 'Çoban', 16, 'Kaleci', 0, 0),
    Person('Samet', 'Çelik', 17, 'Kaleci', 0, 0),
    Person('Üzeyir', 'Türkoglu', 11, 'Kaleci', 0, 0),
    Person('Mustafa', 'Ömeroglu', 13, 'Kaleci', 0, 0),
    Person('Serkan', 'Erdogan', 15, 'Kaleci', 0, 0),
    Person('Ayhan', 'Yel', 16, 'Kaleci', 0, 0),
    Person('Aliye', 'Aydin', 13, 'Kaleci', 0, 0),
    Person('Aysel', 'Yavuz', 16, 'Kaleci', 0, 0),
    Person('Ümit', 'Kutlu', 14, 'Kaleci', 0, 0),
    Person('Sezer', 'Erinç', 18, 'Kaleci', 0, 0),
    Person('Hikmet', 'Erkarslan', 14, 'Kaleci', 0, 0),
    Person('Samet', 'Altindagi', 18, 'Kaleci', 0, 0),
    Person('Yunus', 'Bayar', 18, 'Kaleci', 0, 0),
    Person('Aytac', 'Damga', 15, 'Kaleci', 0, 0),
    Person('Ercan', 'Ates', 14, 'Kaleci', 0, 0),
    Person('Ömer', 'Dalan', 14, 'Kaleci', 0, 0),
    Person('Mehmet', 'Yüzügüldü', 16, 'Kaleci', 0, 0),
    Person('Sendogan', 'Emre', 11, 'Kaleci', 0, 0),
    Person('Musa', 'Kaya', 18, 'Kaleci', 0, 0),
    Person('Mehnet', 'Acikgoz', 11, 'Kaleci', 0, 0),
    Person('Fahrettin', 'Süngee', 16, 'Kaleci', 0, 0),
    Person('Orhan', 'Ali', 11, 'Kaleci', 0, 0),
    Person('Orhan', 'Altan', 11, 'Kaleci', 0, 0),
    Person('Yalcin', 'Ildiz', 11, 'Kaleci', 0, 0),
    Person('Levent', 'Çicek', 14, 'Kaleci', 0, 0),
    Person('Ilker', 'Acar', 18, 'Kaleci', 0, 0),
    Person('Medeni', 'Kaçar', 11, 'Kaleci', 0, 0),
    Person('Ibrahim', 'Ibrahim', 11, 'Kaleci', 0, 0),
    Person('Samed', 'Dinç', 16, 'Kaleci', 0, 0),
    Person('Can', 'Kaçar', 17, 'Kaleci', 0, 0),
    Person('Yunus', 'Hasimoglu', 14, 'Kaleci', 0, 0),
    Person('Halil', 'Isik', 15, 'Kaleci', 0, 0),
    Person('Rahim', 'Büyükyildiz', 13, 'Kaleci', 0, 0),
    Person('Erhan', 'Korkmaz', 11, 'Kaleci', 0, 0),
    Person('Emin', 'Özen', 11, 'Kaleci', 0, 0),
    Person('Recep', 'Emre', 13, 'Kaleci', 0, 0),
    Person('Ali', 'Ibrahim', 16, 'Kaleci', 0, 0),
    Person('Eren', 'Ekmen', 12, 'Kaleci', 0, 0),
    Person('Sezen', 'Efiloglu', 16, 'Kaleci', 0, 0),
    Person('Mehmet', 'Demirözgil', 12, 'Kaleci', 0, 0),
    Person('Adem', 'Uckun', 15, 'Kaleci', 0, 0),
    Person('Veysi', 'Çaglar', 13, 'Kaleci', 0, 0),
    Person('Ramazan', 'Latif', 16, 'Kaleci', 0, 0),
    Person('Mehmet', 'Kaçar', 12, 'Kaleci', 0, 0),
    Person('Orhanin', 'Yüksel', 11, 'Kaleci', 0, 0),
    Person('Feyyaz', 'Avci', 14, 'Kaleci', 0, 0),
    Person('Ayhan', 'Ermin', 14, 'Kaleci', 0, 0),
    Person('Ali', 'Isik', 13, 'Kaleci', 0, 0),
    Person('Hakki', 'Ekmen', 18, 'Kaleci', 0, 0),
    Person('Eray', 'Kaderi', 16, 'Kaleci', 0, 0),
    Person('Erdem', 'Meryem', 17, 'Kaleci', 0, 0),
    Person('Yunus', 'Karadogan', 17, 'Kaleci', 0, 0),
    Person('Felemez', 'Riza', 12, 'Kaleci', 0, 0),
    Person('Ali', 'Yüksel', 18, 'Kaleci', 0, 0),
    Person('Soner', 'Mutlu', 15, 'Kaleci', 0, 0),
    Person('Ayhan', 'Erkul', 16, 'Kaleci', 0, 0),
    Person('Sinan', 'Gülsül', 15, 'Kaleci', 0, 0),
    Person('Halil', 'Isler', 15, 'Defans', 14, 10),
    Person('Mehmet', 'Kerse', 12, 'Defans', 6, 1),
    Person('Erkut', 'Akgun', 14, 'Defans', 5, 8),
    Person('Yuksel', 'Mavici', 12, 'Defans', 6, 0),
    Person('Celal', 'Damar', 15, 'Defans', 6, 10),
    Person('Muharrem', 'Ibrahim', 13, 'Defans', 15, 1),
    Person('Yunus', 'Polat', 15, 'Defans', 3, 0),
    Person('Mehmet', 'Keskin', 15, 'Defans', 2, 10),
    Person('Yunus', 'Fidan', 18, 'Defans', 11, 0),
    Person('Necati', 'Senguler', 12, 'Defans', 1, 4),
    Person('Recep', 'Öztürk', 14, 'Defans', 0, 13),
    Person('Vahap', 'Baysal', 13, 'Defans', 2, 9),
    Person('Mehmet', 'Gödüç', 16, 'Defans', 5, 6),
    Person('Zeki', 'Kerse', 13, 'Defans', 7, 10),
    Person('Bülent', 'Damar', 14, 'Defans', 6, 0),
    Person('Ahmet', 'Yildiz', 14, 'Defans', 9, 11),
    Person('Hasan', 'Özyigit', 15, 'Defans', 11, 1),
    Person('Uzeyfe', 'Bozkurt', 12, 'Defans', 10, 10),
    Person('Sinan', 'Sari', 15, 'Defans', 9, 8),
    Person('Ismail', 'Ünal', 12, 'Defans', 0, 11),
    Person('Serdar', 'Sergen', 14, 'Defans', 3, 0),
    Person('Mahmut', 'Demir', 16, 'Defans', 4, 11),
    Person('Emre', 'Tekeli', 14, 'Defans', 2, 12),
    Person('Eyyüp', 'Tekin', 15, 'Defans', 13, 1),
    Person('Leman', 'Kabakci', 16, 'Defans', 5, 2),
    Person('Rahmi', 'Mintas', 18, 'Defans', 13, 1),
    Person('Mustafa', 'Kabucak', 13, 'Defans', 7, 11),
    Person('Hüseyin', 'Külahli', 15, 'Defans', 13, 0),
    Person('Gökçe', 'Pulat', 14, 'Defans', 2, 9),
    Person('Baris', 'Fidan', 17, 'Defans', 4, 15),
    Person('Furkan', 'Tursun', 16, 'Defans', 6, 4),
    Person('Yigit', 'Solak', 13, 'Defans', 15, 4),
    Person('Emre', 'Sogucak', 15, 'Defans', 12, 0),
    Person('Hasan', 'Gida', 13, 'Defans', 4, 12),
    Person('Yavuz', 'Altas', 15, 'Defans', 4, 3),
    Person('Semih', 'Altin', 12, 'Defans', 4, 4),
    Person('Oguzz', 'Gozubenli', 14, 'Defans', 8, 6),
    Person('Salih', 'Çelik', 14, 'Defans', 5, 15),
    Person('Mehmet', 'Nas', 17, 'Defans', 7, 11),
    Person('Yildiray', 'Sakinan', 13, 'Defans', 5, 1),
    Person('Abdullah', 'Karagöz', 14, 'Defans', 4, 12),
    Person('Nüveylen', 'Yilmaz', 13, 'Defans', 2, 15),
    Person('Gürhan', 'Armutçu', 12, 'Defans', 4, 8),
    Person('Idris', 'Ali', 14, 'Defans', 12, 8),
    Person('Atilla', 'Yilmaz', 14, 'Defans', 9, 12),
    Person('Volkan', 'Ortakci', 17, 'Defans', 7, 5),
    Person('Erkan', 'Özdemir', 13, 'Defans', 5, 0),
    Person('Ömer', 'Özcan', 17, 'Defans', 8, 15),
    Person('Mehmet', 'Gündogdu', 17, 'Defans', 10, 10),
    Person('Alican', 'Balik', 12, 'Defans', 3, 3),
    Person('Tekin', 'Altun', 16, 'Defans', 11, 14),
    Person('Emre', 'Sacar', 14, 'Defans', 11, 3),
    Person('Hüseyin', 'Saglam', 17, 'Defans', 13, 10),
    Person('Faruk', 'Hayri', 12, 'Defans', 8, 13),
    Person('Yasin', 'Akkurt', 16, 'Defans', 3, 15),
    Person('Emre', 'Ortakci', 18, 'Defans', 10, 5),
    Person('Hakki', 'Yusufoglu', 18, 'Defans', 15, 1),
    Person('Hasan', 'Köklüyurt', 11, 'Defans', 15, 7),
    Person('Ferdi', 'Guloglu', 11, 'Defans', 7, 12),
    Person('Mehmet', 'Asit', 17, 'Defans', 11, 4),
    Person('Oguz', 'Konaç', 16, 'Defans', 14, 13),
    Person('Serkan', 'Özkan', 17, 'Defans', 5, 15),
    Person('Mustafa', 'Yildiz', 15, 'Defans', 2, 12),
    Person('Gökhan', 'Eroglu', 12, 'Defans', 3, 8),
    Person('Ilhan', 'Konaç', 12, 'Defans', 10, 14),
    Person('Ahmet', 'Akdas', 18, 'Defans', 2, 5),
    Person('Ali', 'Gazi', 11, 'Defans', 0, 14),
    Person('Emrah', 'Asama', 11, 'Defans', 5, 4),
    Person('Fikret', 'Bayir', 13, 'Defans', 2, 2),
    Person('Mehmet', 'Altintop', 13, 'Defans', 1, 13),
    Person('Huseyin', 'Torun', 14, 'Defans', 15, 7),
    Person('Evren', 'Murat', 12, 'Defans', 15, 15),
    Person('Bektas', 'Gülsuyu', 17, 'Defans', 7, 2),
    Person('Haci', 'Turan', 14, 'Defans', 6, 6),
    Person('Seyfi', 'Kocaoglu', 15, 'Defans', 2, 4),
    Person('Coskun', 'Cebir', 15, 'Defans', 5, 5),
    Person('Recep', 'Murat', 17, 'Defans', 7, 2),
    Person('Muammer', 'Krdmr', 15, 'Defans', 6, 0),
    Person('Celal', 'Musaoglu', 16, 'Defans', 6, 6),
    Person('Ferhat', 'Yesil', 15, 'Defans', 5, 12),
    Person('Aptulkadir', 'Sahin', 14, 'Defans', 0, 15),
    Person('Murat', 'Yesil', 11, 'Defans', 11, 13),
    Person('Ahmet', 'Emre', 17, 'Defans', 14, 9),
    Person('Aydin', 'Yesil', 12, 'Defans', 11, 6),
    Person('Burcu', 'Ataman', 11, 'Defans', 13, 10),
    Person('Ibrahim', 'Yalazi', 17, 'Defans', 6, 6),
    Person('Ercan', 'Çakan', 17, 'Defans', 7, 8),
    Person('Selçuk', 'Özalp', 15, 'Defans', 8, 2),
    Person('Ali', 'Çakan', 18, 'Defans', 9, 8),
    Person('Umut', 'Köseoglu', 12, 'Defans', 6, 0),
    Person('Fahrettin', 'Halil', 17, 'Defans', 8, 8),
    Person('Eren', 'Ardag', 18, 'Defans', 10, 6),
    Person('Kenan', 'Ataman', 11, 'Defans', 5, 3),
    Person('Gokhan', 'Gücüm', 18, 'Defans', 12, 4),
    Person('Kuddusi', 'Albayrak', 13, 'Defans', 3, 14),
    Person('Sefer', 'Altintas', 17, 'Defans', 10, 14),
    Person('Mehmet', 'Yildirim', 13, 'Defans', 4, 3),
    Person('Nuh', 'Deresoy', 17, 'Defans', 3, 4),
    Person('Mesut', 'Ataman', 14, 'Defans', 5, 15),
    Person('Ejder.', 'Volkan', 17, 'Defans', 2, 1),
    Person('Ismail', 'Çorak', 15, 'Defans', 11, 14),
    Person('Vedat', 'Kocatürk', 11, 'Defans', 2, 3),
    Person('Mehmet', 'Volkan', 13, 'Defans', 14, 4),
    Person('Irfan', 'Çökükoglu', 15, 'Defans', 5, 3),
    Person('Zafer', 'Kilic', 15, 'Defans', 13, 0),
    Person('Müslüm', 'Çakar', 15, 'Defans', 10, 10),
    Person('Habib', 'Yilmaz', 17, 'Defans', 10, 10),
    Person('Sefa', 'Kilic', 18, 'Defans', 11, 0),
    Person('Eren', 'Yildirim', 18, 'Defans', 5, 1),
    Person('Melih', 'Selçuk', 13, 'Defans', 13, 10),
    Person('Kuddusi', 'Çerçi', 11, 'Defans', 13, 2),
    Person('Bakar', 'Basbaydar', 13, 'Defans', 12, 14),
    Person('Sefer', 'Sedef', 12, 'Defans', 14, 13),
    Person('Vedat', 'Özen', 11, 'Defans', 8, 11),
    Person('Sahin', 'Guler', 11, 'Defans', 3, 0),
    Person('Gülsah', 'Guler', 14, 'Defans', 7, 1),
    Person('Ali', 'Akar', 18, 'Defans', 3, 8),
    Person('Erdinc', 'Çorak', 15, 'Defans', 11, 1),
    Person('Mehmet', 'Tunç', 14, 'Defans', 13, 7),
    Person('Sahin', 'Inan', 16, 'Defans', 1, 0),
    Person('Hakan', 'Sedef', 16, 'Defans', 11, 13),
    Person('Hasan', 'Özen', 14, 'Defans', 0, 8),
    Person('Baris', 'Guler', 15, 'Defans', 3, 2),
    Person('Alpaslan', 'Can', 12, 'Defans', 3, 1),
    Person('Semsettin', 'Tag', 15, 'Defans', 13, 6),
    Person('Yusuf', 'can', 13, 'Defans', 2, 10),
    Person('Mevlüt', 'Dogan', 14, 'Defans', 11, 6),
    Person('Feridun', 'Atilkan', 15, 'Defans', 11, 5),
    Person('Hasan', 'Gültekin', 15, 'Defans', 13, 11),
    Person('Emine', 'Ertem', 15, 'Defans', 2, 13),
    Person('Ayse', 'Demirtas', 17, 'Defans', 13, 7),
    Person('Semra', 'Karaca', 12, 'Defans', 8, 5),
    Person('Yekta', 'Arnas', 17, 'Defans', 3, 6),
    Person('Ersin', 'Dogan', 17, 'Defans', 8, 6),
    Person('Ayaz', 'Çifçi', 15, 'Defans', 3, 3),
    Person('Sükrü', 'Gül', 15, 'Defans', 11, 14),
    Person('Erdinc', 'Yüksel', 15, 'Defans', 11, 9),
    Person('Selçuk', 'Inan', 15, 'Defans', 7, 7),
    Person('Tuncer', 'Keskin', 14, 'Defans', 12, 0),
    Person('Zinnur', 'Suat', 16, 'Defans', 2, 0),
    Person('Dewran', 'Karaca', 14, 'Defans', 9, 11),
    Person('Tugba', 'Guler', 12, 'Defans', 0, 11),
    Person('Yücel', 'Gür', 16, 'Defans', 11, 2),
    Person('Erdal', 'Korkmaz', 12, 'Defans', 12, 7),
    Person('Abdullah', 'Polat', 17, 'Defans', 3, 0),
    Person('Ersin', 'Göklü', 12, 'Defans', 6, 7),
    Person('Mustafa', 'Ertokli', 18, 'Defans', 14, 3),
    Person('Yusuf', 'Soyugüzel', 17, 'Defans', 11, 4),
    Person('Deniz', 'Aydin', 16, 'Defans', 11, 9),
    Person('Bayram', 'Özaydin', 11, 'Defans', 11, 2),
    Person('Yasar', 'Keskin', 13, 'Defans', 9, 10),
    Person('Abdulaziz', 'Yalcintas', 18, 'Defans', 13, 7),
    Person('Mustafa', 'Kucur', 17, 'Defans', 9, 13),
    Person('Sezai', 'Atalay', 11, 'Defans', 6, 1),
    Person('Baris', 'Göklü', 17, 'Defans', 0, 4),
    Person('Selim', 'Karabacak', 16, 'Defans', 15, 15),
    Person('Salim', 'Güngörmez', 12, 'Defans', 11, 2),
    Person('Haydar', 'Yilmaz', 17, 'Defans', 15, 2),
    Person('Selahattin', 'Daud', 12, 'Defans', 5, 10),
    Person('Zeki', 'Körpe', 13, 'Defans', 15, 2),
    Person('Murat', 'Ünal', 15, 'Defans', 5, 7),
    Person('Sedat', 'Serhat', 12, 'Defans', 11, 15),
    Person('Enis', 'Yilmaz', 12, 'Defans', 2, 5),
    Person('Yildirim', 'Yilmaz', 15, 'Defans', 6, 1),
    Person('Cem', 'Akkol', 14, 'Defans', 8, 1),
    Person('Halil', 'Örkmez', 13, 'Defans', 2, 8),
    Person('Yusuf', 'Üstündag', 12, 'Defans', 8, 10),
    Person('Lezgin', 'Bozdemir', 13, 'Defans', 13, 3),
    Person('Atilla', 'Beyazit', 11, 'Defans', 12, 14),
    Person('Ibrahim', 'Kayadere', 18, 'Defans', 10, 0),
    Person('Niyazi', 'Yavuz', 17, 'Defans', 5, 12),
    Person('Ali', 'Yildirimhan', 12, 'Defans', 7, 0),
    Person('Süleyman', 'Akbas', 11, 'Defans', 2, 5),
    Person('Cihan', 'Bekler', 14, 'Defans', 8, 15),
    Person('Muhammet', 'Nisanci', 11, 'Defans', 13, 11),
    Person('Semih', 'Unal', 17, 'Defans', 9, 1),
    Person('Efendi', 'Karakoç', 11, 'Defans', 9, 0),
    Person('Semih', 'Yardimci', 17, 'Defans', 0, 14),
    Person('Yusuf', 'Zeybek', 18, 'Defans', 1, 6),
    Person('Zafer', 'Kara', 15, 'Defans', 9, 8),
    Person('Bahattin', 'Güdek', 15, 'Defans', 13, 5),
    Person('Emrah', 'Unal', 13, 'Defans', 10, 7),
    Person('Önder', 'Güdek', 17, 'Defans', 11, 11),
    Person('Ahmet', 'Cevre', 15, 'Defans', 11, 15),
    Person('Ömer', 'Kaya', 11, 'Defans', 15, 8),
    Person('Dogan', 'Karaca', 18, 'Defans', 8, 9),
    Person('Faruk', 'Celik', 12, 'Defans', 6, 5),
    Person('Yunus', 'Ergün', 14, 'Defans', 2, 1),
    Person('Murat', 'Ertugrul', 12, 'Defans', 6, 5),
    Person('Kutbettin', 'Özgür', 14, 'Defans', 6, 3),
    Person('Ömer', 'Akyüz', 18, 'Defans', 13, 2),
    Person('Mustafa', 'Dilen', 12, 'Defans', 7, 15),
    Person('Dogan', 'Ergün', 11, 'Defans', 14, 11),
    Person('Ömer', 'Ates', 13, 'Defans', 11, 1),
    Person('Güven', 'Isik', 15, 'Defans', 4, 15),
    Person('Soner', 'Koyuncu', 11, 'Defans', 10, 7),
    Person('Hakan', 'Oktay', 17, 'Defans', 1, 2),
    Person('Hasan', 'Aydin', 14, 'Defans', 7, 4),
    Person('Volkan', 'Koyuncu', 14, 'Defans', 2, 14),
    Person('Özkan', 'Ceren', 17, 'Defans', 10, 13),
    Person('Oguzhan', 'Atici', 16, 'Defans', 6, 1),
    Person('Onur', 'Koca', 18, 'Defans', 8, 12),
    Person('Yusuf', 'Kandemir', 17, 'Defans', 13, 5),
    Person('Ekrem', 'Cengiz', 12, 'Defans', 12, 0),
    Person('Can', 'Sahin', 12, 'Defans', 8, 5),
    Person('Hüsnü', 'Ekenel', 17, 'Defans', 14, 8),
    Person('Eren', 'Önder', 14, 'Ortasaha', 2, 7),
    Person('Mustafa', 'Cevre', 11, 'Ortasaha', 8, 0),
    Person('Fatih', 'Karakulleoglu', 15, 'Ortasaha', 1, 10),
    Person('Ibrahim', 'Sahin', 11, 'Ortasaha', 12, 8),
    Person('Tarik', 'Erdogan', 13, 'Ortasaha', 2, 15),
    Person('Hüseyin', 'Sezer', 13, 'Ortasaha', 14, 14),
    Person('Mustafa', 'Kanter', 12, 'Ortasaha', 0, 1),
    Person('Ibrahim', 'Demir', 11, 'Ortasaha', 0, 8),
    Person('Numan', 'Çifte', 16, 'Ortasaha', 9, 12),
    Person('Cihat', 'Tiryaki', 13, 'Ortasaha', 4, 14),
    Person('Mehmet', 'Azderr', 14, 'Ortasaha', 15, 10),
    Person('Murat', 'Sahin', 11, 'Ortasaha', 8, 15),
    Person('Izzet', 'Kavli', 11, 'Ortasaha', 14, 13),
    Person('Mecit', 'Çaliskan', 11, 'Ortasaha', 6, 6),
    Person('Ali', 'Karakus', 11, 'Ortasaha', 1, 0),
    Person('Tolga', 'Ali', 15, 'Ortasaha', 9, 4),
    Person('Volkan', 'Nural', 17, 'Ortasaha', 8, 12),
    Person('Muhammed', 'Ismailoglu', 16, 'Ortasaha', 9, 15),
    Person('Safak', 'Çetin', 13, 'Ortasaha', 14, 7),
    Person('Teoman', 'Osman', 12, 'Ortasaha', 14, 7),
    Person('Suna', 'Avci', 16, 'Ortasaha', 6, 13),
    Person('Ugur', 'Gokce', 17, 'Ortasaha', 6, 0),
    Person('Ahmet', 'Gül', 15, 'Ortasaha', 4, 12),
    Person('Ehliman', 'Ersoy', 18, 'Ortasaha', 10, 4),
    Person('Mehmet', 'Eren', 18, 'Ortasaha', 2, 5),
    Person('Mustafa', 'Torun', 12, 'Ortasaha', 15, 2),
    Person('Sevket', 'Güler', 14, 'Ortasaha', 6, 12),
    Person('Ayhan', 'Yaban', 17, 'Ortasaha', 1, 3),
    Person('Zekai', 'Ersen', 16, 'Ortasaha', 15, 8),
    Person('Ahmet', 'Yildiz', 16, 'Ortasaha', 13, 4),
    Person('Oktay', 'Aksoy', 13, 'Ortasaha', 8, 8),
    Person('Ufuk', 'Cabir', 18, 'Ortasaha', 1, 6),
    Person('Süleyman', 'Öztürk', 13, 'Ortasaha', 2, 10),
    Person('Mehmet', 'Aksu', 13, 'Ortasaha', 9, 10),
    Person('Serkan', 'tuzcu', 17, 'Ortasaha', 1, 4),
    Person('Davut', 'Tasdemir', 17, 'Ortasaha', 8, 3),
    Person('Erdem', 'Aksu', 12, 'Ortasaha', 12, 8),
    Person('Isa', 'Alatas', 12, 'Ortasaha', 5, 14),
    Person('Sadullah', 'Ali', 18, 'Ortasaha', 2, 2),
    Person('Murat', 'Salman', 11, 'Ortasaha', 14, 4),
    Person('Hakan', 'Kurt', 12, 'Ortasaha', 13, 12),
    Person('Rabia', 'Türegün', 14, 'Ortasaha', 3, 12),
    Person('Mustafa', 'Salman', 12, 'Ortasaha', 11, 2),
    Person('Kemal', 'Oral', 18, 'Ortasaha', 15, 8),
    Person('Arif', 'Bayram', 14, 'Ortasaha', 13, 4),
    Person('Muhittin', 'Kurkcu', 11, 'Ortasaha', 6, 13),
    Person('Bakir', 'Keles', 17, 'Ortasaha', 5, 9),
    Person('Baris', 'Çekmez', 15, 'Ortasaha', 3, 13),
    Person('Tuna', 'Atil', 16, 'Ortasaha', 15, 8),
    Person('Fatih', 'Vicil', 12, 'Ortasaha', 2, 0),
    Person('Oktay', 'Avan', 16, 'Ortasaha', 15, 14),
    Person('Ahmet', 'Görgün', 15, 'Ortasaha', 8, 0),
    Person('Seyit', 'Celep', 17, 'Ortasaha', 2, 15),
    Person('Sehmuz', 'Tufekci', 16, 'Ortasaha', 5, 1),
    Person('Muhammet', 'Yaman', 16, 'Ortasaha', 7, 0),
    Person('Musa', 'Tasdemir', 14, 'Ortasaha', 13, 9),
    Person('Dogan', 'Sevri', 15, 'Ortasaha', 14, 12),
    Person('Sait', 'Ahmet', 13, 'Ortasaha', 13, 11),
    Person('Umut', 'Ozkartal', 16, 'Ortasaha', 6, 9),
    Person('Mahmut', 'Tunca', 14, 'Ortasaha', 2, 5),
    Person('Mehmet', 'Salgut', 18, 'Ortasaha', 9, 5),
    Person('Ibrahim', 'Kucukoglu', 18, 'Ortasaha', 11, 13),
    Person('Ömer', 'Çalim', 17, 'Ortasaha', 13, 15),
    Person('Yusuf', 'Köse', 15, 'Ortasaha', 9, 0),
    Person('Gökhan', 'Hazirlar', 14, 'Ortasaha', 11, 7),
    Person('Ibrahim', 'Özcan', 12, 'Ortasaha', 1, 10),
    Person('Özkan', 'Tas', 16, 'Ortasaha', 2, 10),
    Person('Izzettin', 'Faruk', 12, 'Ortasaha', 3, 0),
    Person('Yunus', 'Sürer', 16, 'Ortasaha', 7, 4),
    Person('Musa', 'Günes', 13, 'Ortasaha', 11, 6),
    Person('Irfan', 'Çetin', 16, 'Ortasaha', 10, 8),
    Person('Ali', 'Darendeli', 12, 'Ortasaha', 7, 5),
    Person('Hüseyin', 'Kanat', 13, 'Ortasaha', 4, 3),
    Person('Mustafa', 'Emre', 14, 'Ortasaha', 3, 0),
    Person('Abdulkadir', 'Köse', 17, 'Ortasaha', 13, 1),
    Person('Ergün', 'Doganoglu', 17, 'Ortasaha', 10, 0),
    Person('Nihat', 'Baran', 12, 'Ortasaha', 3, 2),
    Person('Mehmet', 'Yavas', 17, 'Ortasaha', 15, 2),
    Person('Ozan', 'Girgin', 12, 'Ortasaha', 4, 2),
    Person('Ismail', 'Can', 16, 'Ortasaha', 2, 5),
    Person('Raef', 'Ongun', 13, 'Ortasaha', 0, 11),
    Person('Soner', 'Sari', 11, 'Ortasaha', 6, 13),
    Person('Mehmet', 'Ali', 13, 'Ortasaha', 12, 14),
    Person('Ahmet', 'Sari', 15, 'Ortasaha', 0, 13),
    Person('Hüseyin', 'Çeçen', 17, 'Ortasaha', 2, 13),
    Person('Adem', 'Albatran', 18, 'Ortasaha', 14, 8),
    Person('Ilhami', 'Aslan', 12, 'Ortasaha', 9, 14),
    Person('Emine', 'Genç', 12, 'Ortasaha', 5, 10),
    Person('Muhammet', 'Sari', 12, 'Ortasaha', 7, 3),
    Person('Hasan', 'Varol', 12, 'Ortasaha', 5, 5),
    Person('Kadir', 'Akkurt', 14, 'Ortasaha', 6, 5),
    Person('Ahmet', 'Akman', 15, 'Ortasaha', 0, 7),
    Person('Ismail', 'Sahiner', 13, 'Ortasaha', 1, 3),
    Person('Süleyman', 'Emin', 18, 'Ortasaha', 8, 9),
    Person('Halil', 'Varol', 12, 'Ortasaha', 11, 12),
    Person('Baris', 'Koca', 12, 'Ortasaha', 9, 11),
    Person('Adnan', 'Balkan', 12, 'Ortasaha', 14, 4),
    Person('Niyazi', 'Alpergün', 18, 'Ortasaha', 0, 8),
    Person('Emre', 'Öztürk', 18, 'Ortasaha', 14, 0),
    Person('Erkan', 'Gökhan', 12, 'Ortasaha', 0, 13),
    Person('Fehmi', 'Uzun', 12, 'Ortasaha', 4, 2),
    Person('Hasan', 'Alkan', 14, 'Ortasaha', 11, 7),
    Person('Ismail', 'Çaliskan', 16, 'Forvet', 5, 7),
    Person('Hamza', 'Güçlü', 13, 'Forvet', 4, 8),
    Person('Tayfun', 'Tonus', 11, 'Forvet', 0, 2),
    Person('Gökhan', 'Baskara', 16, 'Forvet', 14, 11),
    Person('Semih', 'Hasanbekar', 15, 'Forvet', 3, 5),
    Person('Oktay', 'Ardiç', 14, 'Forvet', 10, 2),
    Person('Süleyman', 'Evinç', 18, 'Forvet', 4, 5),
    Person('Hakan', 'Özyurt', 14, 'Forvet', 3, 12),
    Person('Asli', 'Gündogan', 16, 'Forvet', 8, 5),
    Person('Sercan', 'Simsek', 17, 'Forvet', 2, 5),
    Person('Aycan', 'Oktekin', 14, 'Forvet', 13, 7),
    Person('Mehmet', 'Tonus', 13, 'Forvet', 3, 12),
    Person('Necip', 'Akin', 13, 'Forvet', 13, 6),
    Person('Utku', 'Tunali', 13, 'Forvet', 1, 4),
    Person('Yusuf', 'Saydam', 18, 'Forvet', 10, 13),
    Person('Sait', 'Ilhan', 17, 'Forvet', 6, 15),
    Person('Ömer', 'Gögebakan', 12, 'Forvet', 0, 11),
    Person('Fatih', 'Samsa', 16, 'Forvet', 6, 14),
    Person('Mustafa', 'Duran', 13, 'Forvet', 8, 8),
    Person('Hakan', 'Küçük', 16, 'Forvet', 9, 5),
    Person('Yusuf', 'Ozan', 18, 'Forvet', 6, 2),
    Person('Kadir', 'Ilhan', 17, 'Forvet', 10, 5),
    Person('Ramazan', 'Atmaca', 17, 'Forvet', 12, 7),
    Person('Emrah', 'Sari', 12, 'Forvet', 4, 11),
    Person('Aydin', 'Karatunç', 15, 'Forvet', 5, 4),
    Person('Emre', 'Aslan', 18, 'Forvet', 14, 7),
    Person('Özkan', 'Avci', 16, 'Forvet', 10, 11),
    Person('Ibrahim', 'Demir', 18, 'Forvet', 13, 10),
    Person('Serkan', 'Paltaci', 16, 'Forvet', 5, 11),
    Person('Nusret', 'Kaza', 14, 'Forvet', 12, 2),
    Person('Gonca', 'Meydan', 14, 'Forvet', 3, 8),
    Person('Ramazan', 'Verim', 11, 'Forvet', 3, 5),
    Person('Aydin', 'Taskin', 16, 'Forvet', 5, 1),
    Person('Mitat', 'Olcucuoglu', 15, 'Forvet', 8, 5),
    Person('Yunus', 'Yilmaz', 18, 'Forvet', 8, 14),
    Person('Mehmet', 'Külekçioglu', 16, 'Forvet', 15, 5),
    Person('Çetin', 'Demir', 14, 'Forvet', 9, 14),
    Person('Taner', 'Kaza', 18, 'Forvet', 1, 5),
    Person('Ahmet', 'Akburak', 13, 'Forvet', 2, 1),
    Person('Sidik', 'Sen', 14, 'Forvet', 13, 11),
    Person('Orhan', 'Kordon', 17, 'Forvet', 9, 3),
    Person('Mehmet', 'Damar', 18, 'Forvet', 10, 12),
    Person('Hüseyin', 'Yigit', 18, 'Forvet', 15, 0),
    Person('Zafer', 'Aslan', 12, 'Forvet', 4, 12),
    Person('Ergül', 'Erdogan', 15, 'Forvet', 12, 10),
    Person('Ercan', 'Bozkurt', 16, 'Forvet', 2, 12),
    Person('Ali', 'Baglan', 16, 'Forvet', 9, 8),
    Person('Turan', 'Özer', 14, 'Forvet', 12, 3),
    Person('Anil', 'Kole', 18, 'Forvet', 5, 1),
    Person('Turan', 'Celal', 12, 'Forvet', 2, 0),
    Person('Turan', 'Sevinç', 17, 'Forvet', 0, 4),
    Person('Selahattin', 'Bozkurt', 18, 'Forvet', 4, 10),
    Person('Mehmet', 'Dogan', 16, 'Forvet', 2, 12),
    Person('Yilmaz', 'Konuk', 18, 'Forvet', 11, 5),
    Person('Mustafa', 'Dogan', 12, 'Forvet', 0, 5),
    Person('Mehmet', 'Dogan', 11, 'Forvet', 5, 1),
    Person('Abdulkadir', 'Kaya', 11, 'Forvet', 11, 11),
    Person('Ersin', 'Alp', 17, 'Forvet', 12, 12),
    Person('Murat', 'Polat', 18, 'Forvet', 1, 6),
    Person('Yunus', 'Donan', 18, 'Forvet', 6, 15),
    Person('Hakan', 'Öztürk', 16, 'Forvet', 3, 0),
    Person('Fazil', 'Ince', 16, 'Forvet', 6, 11),
    Person('Selahattin', 'Karaman', 17, 'Forvet', 7, 1),
    Person('Serdar', 'Bekar', 11, 'Forvet', 6, 1),
    Person('Ömer', 'Emre', 13, 'Forvet', 1, 9),
    Person('Abdullah', 'Alp', 17, 'Forvet', 8, 3),
    Person('Kahraman', 'Dinler', 11, 'Forvet', 9, 7),
    Person('Gökhan', 'Altinsoy', 13, 'Forvet', 2, 12),
    Person('Osman', 'Göçmen', 14, 'Forvet', 6, 3),
    Person('Ilhan', 'Dinler', 18, 'Forvet', 2, 10),
    Person('Zafer', 'Cakir', 12, 'Forvet', 15, 9),
    Person('Besim', 'Korkmaz', 12, 'Forvet', 14, 11),
    Person('Ahmet', 'Aran', 12, 'Forvet', 3, 9),
    Person('Kazim', 'Asik', 12, 'Forvet', 6, 2),
    Person('Mustafa', 'Kiloglu', 16, 'Forvet', 11, 12),
    Person('Askin', 'Avsar', 11, 'Forvet', 6, 4),
    Person('Ercüment', 'Ural', 13, 'Forvet', 11, 13),
    Person('Özgür', 'Esgin', 14, 'Forvet', 2, 2),
    Person('Serkan', 'Yapar', 11, 'Forvet', 6, 0),
    Person('Sibel', 'Kozan', 16, 'Forvet', 3, 5),
    Person('Hakan', 'Gokten', 16, 'Forvet', 14, 5),
    Person('Can', 'Barutcu', 12, 'Forvet', 12, 12),
    Person('Yahya', 'Demirbasoglu', 12, 'Forvet', 7, 3),
    Person('Yahya', 'Yücel', 15, 'Forvet', 9, 0),
    Person('Adil', 'Uyguç', 18, 'Forvet', 15, 14),
    Person('Adil', 'Akdemir', 11, 'Forvet', 10, 4),
    Person('Gülsah', 'Kocayigit', 15, 'Forvet', 11, 13),
    Person('Kerem', 'Birinci', 16, 'Forvet', 14, 4),
    Person('Ahmet', 'Birinci', 13, 'Forvet', 8, 7),
    Person('Mustafa', 'Ek', 11, 'Forvet', 5, 1),
    Person('Mehmet', 'Ek', 17, 'Forvet', 8, 9),
    Person('Nuri', 'Karakurt', 17, 'Forvet', 7, 8),
    Person('Ercan', 'Can', 17, 'Forvet', 2, 14),
    Person('Ali', 'Dogan', 15, 'Forvet', 6, 9),
    Person('Alpay', 'Gültepe', 17, 'Forvet', 1, 0),
    Person('Mehmet', 'Necati', 17, 'Forvet', 15, 4),
    Person('Kadir', 'Horzum', 17, 'Forvet', 13, 12),
    Person('Muhammet', 'Sevinç', 11, 'Forvet', 13, 0),
    Person('Gürel', 'Dilsiz', 16, 'Forvet', 12, 8),
    Person('Ismail', 'Ince', 13, 'Forvet', 12, 11),
    Person('Ahmet', 'Kaval', 13, 'Forvet', 8, 6),
    Person('Tamer', 'Kiliç', 11, 'Forvet', 11, 1),
    Person('Yigit', 'Demir', 11, 'Forvet', 11, 15),
    Person('Musa', 'Oltulu', 16, 'Forvet', 0, 9),
    Person('Özcan', 'Subasi', 12, 'Forvet', 15, 13),
    Person('Ahmet', 'Çulcu', 13, 'Forvet', 5, 6),
    Person('Gürel', 'Taspinar', 18, 'Forvet', 2, 3),
    Person('Serhat', 'Vidinkalesi', 11, 'Forvet', 6, 8),
    Person('Aziz', 'Berki', 13, 'Forvet', 5, 6),
    Person('Kemal', 'Sagir', 18, 'Forvet', 10, 13),
    Person('Tugçe', 'Uzunlar', 12, 'Forvet', 7, 0),
    Person('Arif', 'Oltulu', 14, 'Forvet', 15, 11),
    Person('Ahmet', 'Kanliada', 17, 'Forvet', 13, 6),
    Person('Müslüm', 'Geçici', 13, 'Forvet', 6, 12),
    Person('Ertan', 'Kasapoglu', 15, 'Forvet', 11, 0),
    Person('Mehmet', 'Tüzün', 13, 'Forvet', 3, 10),
    Person('Halit', 'Adibelli', 15, 'Forvet', 14, 13),
    Person('Abdurrahman', 'Keskin', 13, 'Forvet', 8, 10),
    Person('Onur', 'Kilinç', 15, 'Forvet', 13, 2),
    Person('Yasin', 'Balkiz', 16, 'Forvet', 11, 9),
    Person('Özcan', 'Aysu', 17, 'Forvet', 8, 13),
    Person('Mazlum', 'Kasapoglu', 14, 'Forvet', 6, 9),
    Person('Fatma', 'Arslan', 15, 'Forvet', 5, 6),
    Person('Ömer', 'Isleyen', 17, 'Forvet', 11, 11),
    Person('Ismail', 'Subasi', 17, 'Forvet', 8, 10),
    Person('Ishak', 'Varis', 11, 'Forvet', 5, 10),
    Person('Mustafa', 'Aydogan', 15, 'Forvet', 8, 15),
    Person('Ilker', 'Esetogullari', 12, 'Forvet', 10, 1),
    Person('Ali', 'Arin', 17, 'Forvet', 12, 13),
    Person('Sema', 'Subasi', 11, 'Forvet', 0, 4),
    Person('Mustafa', 'Sansar', 11, 'Forvet', 11, 13),
    Person('Ali', 'Ersen', 11, 'Forvet', 7, 2),
    Person('Muhammed', 'Tiryaki', 16, 'Forvet', 4, 8),
    Person('Ekin', 'Daldal', 14, 'Forvet', 3, 13),
    Person('Emrah', 'Tornuoglu', 18, 'Forvet', 4, 5),
    Person('Harun', 'Acar', 17, 'Forvet', 6, 6),
    Person('Mevlüt', 'Mertcan', 14, 'Forvet', 0, 11),
    Person('Ersan', 'Fevzi', 11, 'Forvet', 3, 13),
    Person('Sibel', 'Ekinn', 11, 'Forvet', 3, 11),
    Person('Ridvan', 'Firat', 15, 'Forvet', 3, 12),
    Person('Mehmet', 'Aydemir', 16, 'Forvet', 3, 11),
    Person('Muhammed', 'Çakici', 13, 'Forvet', 1, 7),
    Person('Rasim', 'Daldal', 18, 'Forvet', 0, 6),
    Person('Sedat', 'Aslan', 12, 'Forvet', 7, 2),
    Person('Dogan', 'Sen', 15, 'Forvet', 9, 6),
    Person('Suat', 'Amaç', 16, 'Forvet', 12, 2),
    Person('Cengiz', 'Özmen', 18, 'Forvet', 8, 10),
    Person('Mehmet', 'Can', 11, 'Forvet', 14, 15),
    Person('Turan', 'Barça', 17, 'Forvet', 8, 14),
    Person('Mesut', 'Tüfekçi', 12, 'Forvet', 11, 14),
    Person('Mustafa', 'Kalem', 12, 'Forvet', 12, 11),
    Person('Abdussamed', 'Arslan', 11, 'Forvet', 14, 11),
    Person('Emre', 'Sait', 16, 'Forvet', 9, 5),
    Person('Aydin', 'Ilker', 11, 'Forvet', 3, 2)
  ];

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];

          return ListTile(
            leading: Text(person.position),
            title: Text(person.name),
            subtitle: Text(person.surname),
            trailing: Text(
                'Yaş: ${person.age} Gol: ${person.goal} Asist: ${person.asist}'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StatPage(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        tooltip: 'Arama',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage(
            onQueryUpdate: print,
            items: people,
            searchLabel: 'Arama',
            suggestion: const Center(
              child: Text(
                  'Ad, soyad, pozisyon, gol ya da asiste göre arama yapabilirsiniz'),
            ),
            failure: const Center(
              child: Text('Aradığınız kriterlere uygun kişi bulunamadı'),
            ),
            filter: (person) => [
              person.name,
              person.surname,
              person.age.toString(),
              person.position,
              person.goal.toString(),
              person.asist.toString(),
            ],
            sort: (a, b) => a.compareTo(b),
            builder: (person) => ListTile(
              leading: Text(person.position),
              title: Text(person.name),
              subtitle: Text(person.surname),
              trailing: Text(
                  'Yaş: ${person.age} Gol: ${person.goal} Asist: ${person.asist}'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StatPage(),
                  ),
                );
              },
            ),
          ),
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}
