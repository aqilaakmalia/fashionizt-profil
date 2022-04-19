import 'package:flutter/material.dart';
import 'pages/profil.dart';
import 'pages/pilih.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: ProfilPage(), //Kalau mau lihat punya yusrel ganti MainPage()
    );
  }
}