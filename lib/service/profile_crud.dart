import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ProfileCrud extends StatefulWidget {
  const ProfileCrud({Key? key}) : super(key: key);

  @override
  State<ProfileCrud> createState() => _ProfileCrudState();
}

class _ProfileCrudState extends State<ProfileCrud> {
  final userIDController = TextEditingController();
  final userNameController = TextEditingController();
  final userSurnameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userMatchController = TextEditingController();
  final userGoalController = TextEditingController();
  final userAssistController = TextEditingController();
  final userYellowController = TextEditingController();
  final userRedController = TextEditingController();
  final userPositionController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('users');

    Future insertdata() async {
      try {
        showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text(
                    'Şifreniz sıfırlanmıştır. E-mailinizi kontrol ediniz.'),
              );
            });
      } on FirebaseAuthException catch (e) {
        print(e);
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(e.message.toString()),
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Veritabanına Sporcu Ekle',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userIDController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ID',
                    hintText: 'ID Yazınız',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ad',
                    hintText: 'Ad Yazınız',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userSurnameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Soyad',
                    hintText: 'Soyad Yazınız',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userAgeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Yaş',
                    hintText: 'Yaş Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userMatchController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Maç',
                    hintText: 'Maç Sayısı Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userGoalController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gol',
                    hintText: 'Gol Sayısı Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userAssistController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Asist',
                    hintText: 'Asist Sayısı Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userYellowController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Sarı',
                    hintText: 'Sarı Kart Sayısı Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userRedController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kırmızı',
                    hintText: 'Kırmızı Kart Sayısı Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: userPositionController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pozisyon',
                    hintText: 'Pozisyon Giriniz',
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  onPressed: () {
                    Map<String, String> users = {
                      'ID': userIDController.text,
                      'AD': userNameController.text,
                      'SOYAD': userSurnameController.text,
                      'YAŞ': userAgeController.text,
                      'MAÇ': userMatchController.text,
                      'GOL': userGoalController.text,
                      'ASİST': userAssistController.text,
                      'SARI': userYellowController.text,
                      'KIRMIZI': userRedController.text,
                      'POZİSYON': userPositionController.text,
                    };

                    dbRef.push().set(users);
                  },
                  color: Colors.teal,
                  textColor: Colors.black,
                  minWidth: 300,
                  height: 40,
                  child: const Text('Sporcu Ekle'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
