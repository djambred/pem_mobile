import 'package:flutter/material.dart';

class Balok extends StatefulWidget {
  @override
  _BalokState createState() => _BalokState();
}

class _BalokState extends State<Balok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Balok"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new ListView(
            children: <Widget>[
              new Pengenalan(),
              new LuasPermukaan(),
            ],
          ),
        ));
  }
}

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text("Balok",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Image.asset(
            "assets/images/bangun_ruang/balok.jpg",
            width: 200.0,
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Balok",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "balok merupakan bangun ruang sisi datar yang memiliki tiga pasang sisi yang saling berhadapan.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child:
              new Text("2. Rumus Balok", style: new TextStyle(fontSize: 23.0)),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Text(
            "1. Luas Permukaan : \n    (2 x p x l ) + (2 x p x t) + (2 x t x l) \n2. Volume : p x l x t",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0),
          ),
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
  var panjang = 0, lebar = 0, tinggi = 0, hasil = 0;

  final TextEditingController p = new TextEditingController();
  final TextEditingController l = new TextEditingController();
  final TextEditingController t = new TextEditingController();

  void luas() {
    setState(() {
      panjang = int.parse(p.text);
      lebar = int.parse(l.text);
      tinggi = int.parse(t.text);
      hasil =
          (2 * panjang * lebar) + (2 * panjang * tinggi) + (2 * tinggi * lebar);
    });
  }

  void volume() {
    setState(() {
      panjang = int.parse(p.text);
      lebar = int.parse(l.text);
      tinggi = int.parse(t.text);
      hasil = panjang * lebar * tinggi;
    });
  }

  void hapus() {
    setState(() {
      p.text = "";
      l.text = "";
      t.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Padding(
            padding: new EdgeInsets.only(bottom: 15.0),
            child: new Text(
              "Menghitung Luas Permukaan dan Volume Balok",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )),
        new TextField(
          controller: p,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Panjang",
              labelText: "Panjang",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new TextField(
            controller: l,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Lebar",
                labelText: "Lebar",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: t,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Tinggi",
              labelText: "Tinggi",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: luas,
                color: Colors.blue,
                child: new Text("Luas"),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 15.0, right: 15.0),
                child: new RaisedButton(
                  onPressed: volume,
                  color: Colors.blue,
                  child: new Text("Volume"),
                ),
              ),
              new RaisedButton(
                onPressed: hapus,
                color: Colors.red,
                child: new Text("Hapus!"),
              ),
            ],
          ),
        ),
        new Text("Hasil : $hasil",
            style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
