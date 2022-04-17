import 'package:flutter/material.dart';

class Limas extends StatefulWidget {
  @override
  _LimasState createState() => _LimasState();
}

class _LimasState extends State<Limas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Limas"),
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
            "assets/images/bangun_ruang/limas.jpg",
            width: 200.0,
          ),
        ),
        new Text(
          "1. Pengertian Limas",
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Text(
            "bangun ruang yang mempunyai bidang alas berbentuk segiempat dengan sisi samping berbentuk segitiga dan mempunyai satu titik puncak meruncing dan saling berhimpit. Alas berbentuk segiempat di sini bisa berupa persegi, persegi panjang, belah ketupat, layang-layang, jajaran genjang, trapesium dan lain-lain.",
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
            "a. Luas Permukaan :  Luas alas + 1/4 × Keliling alas × t segitiga \nb. V = 1/3 x Luas Alas x Tinggi",
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
  var la = 0, t = 0;
  double h, hasil = 0;

  final TextEditingController luas = new TextEditingController();
  final TextEditingController tinggi = new TextEditingController();

  void volume() {
    setState(() {
      la = int.parse(luas.text);
      t = int.parse(tinggi.text);
      h = 1 / 3 * la * t;
      hasil = double.parse(h.toStringAsFixed(1));
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
        new Text("1. Mencari Volume Limas",
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
  var l = 0, k = 0, t = 0;
  double h = 0, hasil = 0;

  final TextEditingController luas = new TextEditingController();
  final TextEditingController keliling = new TextEditingController();
  final TextEditingController tinggi = new TextEditingController();

  void luasPermukaan() {
    setState(() {
      l = int.parse(luas.text);
      k = int.parse(keliling.text);
      t = int.parse(tinggi.text);
      h = l + (1 / 4 * k * t);
      hasil = double.parse(h.toStringAsFixed(1));
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
        new Text("1. Mencari Luas Permukaan Limas",
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
