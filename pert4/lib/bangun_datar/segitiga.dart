import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  var nilaiAB = 0, nilaiBC = 0, nilaiCD = 0, alas = 0, tinggi = 0, hasil = 0;
  double hasilL = 0;

  final TextEditingController ab = new TextEditingController();
  final TextEditingController bc = new TextEditingController();
  final TextEditingController cd = new TextEditingController();
  final TextEditingController a = new TextEditingController();
  final TextEditingController t = new TextEditingController();

  void keliling() {
    setState(() {
      nilaiAB = int.parse(ab.text);
      nilaiBC = int.parse(bc.text);
      nilaiCD = int.parse(cd.text);
      hasil = nilaiAB + nilaiBC + nilaiCD;
    });
  }

  void luas() {
    setState(() {
      alas = int.parse(a.text);
      tinggi = int.parse(t.text);
      hasilL = alas * tinggi * 0.5;
    });
  }

  void hapus() {
    setState(() {
      ab.text = "";
      bc.text = "";
      cd.text = "";
      a.text = "";
      t.text = "";
      hasil = 0;
      hasilL = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Segitiga"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(30.0),
            child: new Column(
              children: <Widget>[
                new Text("Segitiga",
                    style: new TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold)),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Image.asset("assets/images/bangun_datar/segitiga.png"),
                new Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: new Text("1. Pengertian Segitiga",
                      style: new TextStyle(fontSize: 23.0)),
                ),
                new Text(
                    "Segitiga adalah bangun geometri yang dibuat dari tiga sisi yang berupa garis lurus dan tiga sudut.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 18.0)),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: new Text("2. Rumus Segitiga",
                      style: new TextStyle(fontSize: 23.0)),
                ),
                new Text("Keliling : AB + BC + AC \nb. Luas : ½ x a x t",
                    style: new TextStyle(fontSize: 18.0)),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
                  child: new Text("Keterangan :  \na = Alas \nt = Tinggi",
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                new Text(
                  "1. Menghitung Keliling",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextField(
                  controller: ab,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan nilai ab",
                      labelText: "Nilai ab :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: bc,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan Nilai bc",
                      labelText: "Nilai bc :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: cd,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan Nilai cd",
                      labelText: "Nilai cd",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new MaterialButton(
                      onPressed: keliling,
                      child: new Text("Hitung"),
                      color: Colors.blue,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 20.0),
                    ),
                    new MaterialButton(
                      onPressed: hapus,
                      child: new Text("Hapus"),
                      color: Colors.red,
                    )
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Text(
                  "Hasil Keliling : $hasil",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                new Text("2. Menghitung Luas",
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.bold)),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  controller: a,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Masukan Alas :",
                      labelText: "Alas :",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new MaterialButton(
                      onPressed: luas,
                      child: new Text("hitung"),
                      color: Colors.blue,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 20.0),
                    ),
                    new MaterialButton(
                      onPressed: hapus,
                      child: new Text("Hapus"),
                      color: Colors.red,
                    )
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Text(
                  "Hasil : $hasilL",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
