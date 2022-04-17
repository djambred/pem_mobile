import 'package:flutter/material.dart';

class Prisma extends StatefulWidget {
  @override
  _PrismaState createState() => _PrismaState();
}

class _PrismaState extends State<Prisma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Prisma"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new ListView(
          children: <Widget>[
            new Pengenalan(),
            new Volume(),
            new LuasPermukaan()
          ],
        ),
      ),
    );
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Limas",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
          child: new Image.asset(
            "assets/images/bangun_ruang/prisma.png",
            width: 200.0,
          ),
        ),
        new Text(
          "1. Pengertian Prisma",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Text(
            "Prisma adalah bangun ruang yang punya bidang alas dan bidang atas sejajar serta kongruen. Kenapa sejajar dan kongruen? Karena sisi lainnya berupa sisi tegak berbentuk persegi panjang atau jajargenjang.",
            style: new TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        ),
        new Text(
          "2. Rumus Prisma",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Text(
            "Luas Permukaan : 2(Luas alas) + (K alas x tinggi) \nb. Volume: L alas x tinggi",
            style: new TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}

class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  var la = 0, t = 0, hasil = 0;

  final TextEditingController luas = new TextEditingController();
  final TextEditingController tinggi = new TextEditingController();

  void volume() {
    setState(() {
      la = int.parse(luas.text);
      t = int.parse(tinggi.text);
      hasil = la * t;
    });
  }

  void hapus() {
    setState(() {
      luas.text = "";
      tinggi.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text("1. Mencari Volume Prisma",
            style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new TextField(
            controller: luas,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Luas alas",
                labelText: "Luas Alas :",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: tinggi,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Tinggi",
              labelText: "Tinggi :",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: volume,
                child: new Text("Hitung Volume"),
                color: Colors.blue,
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 15.0),
                child: new RaisedButton(
                  onPressed: hapus,
                  child: new Text("Hapus!"),
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        new Text(
          "Hasil : $hasil",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class LuasPermukaan extends StatefulWidget {
  @override
  _LuasPermukaanState createState() => _LuasPermukaanState();
}

class _LuasPermukaanState extends State<LuasPermukaan> {
  var l = 0, k = 0, t = 0, hasil = 0;

  final TextEditingController luas = new TextEditingController();
  final TextEditingController keliling = new TextEditingController();
  final TextEditingController tinggi = new TextEditingController();

  void luasPermukaan() {
    setState(() {
      l = int.parse(luas.text);
      k = int.parse(keliling.text);
      t = int.parse(tinggi.text);
      hasil = (2 * l) + (k * t);
    });
  }

  void hapus() {
    setState(() {
      luas.text = "";
      tinggi.text = "";
      keliling.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 20.0),
        ),
        new Text("1. Mencari Luas Permukaan Prisma",
            style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new TextField(
            controller: luas,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Luas alas",
                labelText: "Luas Alas :",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: keliling,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Keliling Alas",
              labelText: "Keliling Alas :",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
         new Padding(padding: new EdgeInsets.only(bottom: 15.0)),
        new TextField(
          controller: tinggi,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Tinggi",
              labelText: "Tinggi :",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: luasPermukaan,
                child: new Text("Hitung Volume"),
                color: Colors.blue,
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 15.0),
                child: new RaisedButton(
                  onPressed: hapus,
                  child: new Text("Hapus!"),
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        new Text(
          "Hasil : $hasil",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
