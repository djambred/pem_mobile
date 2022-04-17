import 'package:flutter/material.dart';

import 'about.dart';
import 'home.dart';
import 'bangun_datar.dart';
import 'bangun_ruang.dart';
import 'bmi.dart';
// Bangun Datar
import 'bangun_datar/persegi_panjang.dart';
import 'bangun_datar/persegi.dart';
import 'bangun_datar/segitiga.dart';
import 'bangun_datar/lingkaran.dart';
import 'bangun_datar/jajarGenjang.dart';
import 'bangun_datar/trapesium.dart';
import 'bangun_datar/layanglayang.dart';
import 'bangun_datar/belahketupat.dart';
// Bangun Ruang
import 'bangun_ruang/balok.dart';
import 'bangun_ruang/kubus.dart';
import 'bangun_ruang/bola.dart';
import 'bangun_ruang/kerucut.dart';
import 'bangun_ruang/limas.dart';
import 'bangun_ruang/prisma.dart';
import 'bangun_ruang/tabung.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Alat Serbaguna",
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new Rumah(),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/bmi': (BuildContext context) => new Bmi(),
          '/about': (BuildContext context) => new AboutPage(),
          '/bangunDatar': (BuildContext context) => new BangunDatar(),
          '/bangunRuang': (BuildContext context) => new BangunRuang(),
          // Bangun Datar
          '/persegiPanjang': (BuildContext context) => new HomePage(),
          '/persegi': (BuildContext context) => new Persegi(),
          '/segitiga': (BuildContext context) => new Segitiga(),
          '/lingkaran': (BuildContext context) => new Lingkaran(),
          '/jajargenjang': (BuildContext context) => new JajarGenjang(),
          '/trapesium': (BuildContext context) => new Trapesium(),
          '/layanglayang': (BuildContext context) => new LayangLayang(),
          '/belahketupat': (BuildContext context) => new BelahKetupat(),
          // Bangun Ruang
          '/kubus': (BuildContext context) => new Kubus(),
          '/balok': (BuildContext context) => new Balok(),
          '/bola': (BuildContext context) => new Bola(),
          '/kerucut': (BuildContext context) => new Kerucut(),
          '/limas': (BuildContext context) => new Limas(),
          '/prisma': (BuildContext context) => new Prisma(),
          '/tabung': (BuildContext context) => new Tabung()
        });
  }
}
