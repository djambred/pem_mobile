import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Trapesium"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new ListView(
          children: <Widget>[new Pengenalan(), new Keliling(), new Luas()],
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
        new Text("Trapesium",
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        new Padding(
            padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: new Image.asset("assets/images/bangun_datar/trapesium.png",
                width: 200.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("1. Pengertian Trapesium",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "Trapesium adalah bangun segiempat dengan sepasang sisi berhadapan sejajar.",
            textAlign: TextAlign.justify,
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: new Text("2. Rumus Trapesium",
              style: new TextStyle(fontSize: 23.0)),
        ),
        new Text(
            "a. Keliling : a + b + c + d \nb. Luas : ½ x jumlah sisi sejajar x tinggi",
            style: new TextStyle(fontSize: 18.0)),
        new Padding(
          padding: new EdgeInsets.only(top: 15.0, bottom: 20.0),
        ),
      ],
    );
  }
}

class Keliling extends StatefulWidget {
  @override
  _KelilingState createState() => _KelilingState();
}

class _KelilingState extends State<Keliling> {
  var ab = 0, bc = 0, cd = 0, da = 0, hasil = 0;

  final TextEditingController a = new TextEditingController();
  final TextEditingController b = new TextEditingController();
  final TextEditingController c = new TextEditingController();
  final TextEditingController d = new TextEditingController();

  void keliling() {
    setState(() {
      ab = int.parse(a.text);
      bc = int.parse(b.text);
      cd = int.parse(c.text);
      da = int.parse(d.text);
      hasil = ab + bc + cd + da;
    });
  }

  void hapus() {
    setState(() {
      a.text = "";
      b.text = "";
      c.text = "";
      d.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text(
          "1. Mencari Keliling",
          style: new TextStyle(fontSize: 25.0),
        ),
        new Padding(
            padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: new TextField(
              controller: a,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Masukan Nilai a",
                labelText: "Nilai a",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
              ),
            )),
        new TextField(
          controller: b,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Nilai b",
              labelText: "Nilai b",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
            padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: new TextField(
              controller: c,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Masukan Nilai c",
                  labelText: "Nilai c",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0))),
            )),
        new TextField(
          controller: d,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Nilai d",
              labelText: "Nilai d",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: keliling,
                color: Colors.blue,
                child: new Text("Hitung Keliling!"),
              ),
              new Padding(
                  padding: new EdgeInsets.only(left: 10.0),
                  child: new RaisedButton(
                      onPressed: hapus,
                      color: Colors.red,
                      child: new Text("Hapus!")))
            ],
          ),
        ),
        new Text(
          "Hasil : $hasil",
          style: new TextStyle(fontSize: 25.0),
        )
      ],
    );
  }
}

class Luas extends StatefulWidget {
  @override
  _LuasState createState() => _LuasState();
}

class _LuasState extends State<Luas> {
  var tinggi = 0, nilaiA = 0, nilaiC = 0;
  double hasil = 0;

  final TextEditingController a = new TextEditingController();
  final TextEditingController c = new TextEditingController();
  final TextEditingController t = new TextEditingController();

  void luas() {
    setState(() {
      tinggi = int.parse(t.text);
      nilaiA = int.parse(a.text);
      nilaiC = int.parse(c.text);
      hasil = 0.5 * (nilaiA + nilaiC) * tinggi;
    });
  }

  void hapus() {
    setState(() {
      a.text = "";
      t.text = "";
      c.text = "";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Text(
            "2. Mencari Luas",
            style: new TextStyle(fontSize: 25.0),
          ),
        ),
        new TextField(
          controller: a,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Nilai a",
              labelText: "Nilai a",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new TextField(
            controller: c,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Masukan Nilai c",
                labelText: "Nilai c",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ),
        ),
        new TextField(
          controller: t,
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(
              hintText: "Masukan Nilai Tinggi",
              labelText: "Nilai Tinggi",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: luas,
                color: Colors.blue,
                child: new Text("Hitung Luas!"),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 10.0),
                child: new RaisedButton(
                  onPressed: hapus,
                  child: new Text("Hapus!"),
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        new Text("Hasil : $hasil", style: new TextStyle(fontSize: 20.0)),
      ],
    );
  }
}
