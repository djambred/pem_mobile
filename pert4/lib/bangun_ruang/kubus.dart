import 'package:flutter/material.dart';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Kubus"),
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
        new Text("Kubus",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Image.asset(
            "assets/images/bangun_ruang/kubus.jpg",
            width: 200.0,
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Kubus",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Kubus adalah bangun ruang sisi datar yang semua sisinya berbentuk persegi dan semua rusuknya sama panjang.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child:
              new Text("2. Rumus Kubus", style: new TextStyle(fontSize: 23.0)),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: new Text(
            "1. Luas Permukaan :  6 x s² \n2. Volume : S³",
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
  var sisi = 0, hasil = 0;

  final TextEditingController s = new TextEditingController();

  void luas() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = 6 * (sisi * sisi);
    });
  }

  void volume() {
    setState(() {
      sisi = int.parse(s.text);
      hasil = sisi * sisi * sisi;
    });
  }

  void hapus() {
    setState(() {
      s.text = "";
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
              "Menghitung Luas Permukaan dan Volume Kubus",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )),
        new TextField(
          controller: s,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Sisi",
              labelText: "sisi",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
          ),
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
                child: new Text("Hapus"),
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
