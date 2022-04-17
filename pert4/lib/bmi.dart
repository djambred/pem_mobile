import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var berat = 0, tinggi = 0, nama = "", teks = "";
  double tMeter = 0, hasil = 0, hasil1, hasilL = 0;

  final TextEditingController b = new TextEditingController();
  final TextEditingController t = new TextEditingController();
  final TextEditingController n = new TextEditingController();

  void hitung() {
    setState(() {
      berat = int.parse(b.text);
      tinggi = int.parse(t.text);
      tMeter = tinggi * 0.010;
      nama = n.text;
      hasil = berat / (tMeter * tMeter);
      hasilL = double.parse(hasil.toStringAsFixed(1));
      if (hasil >= 18.5 && hasil < 23) {
        teks =
            "$nama, kamu sehat, tetap jaga Kesehatan Anda dan Pola makanan Anda";
      } else if (hasil >= 23 && hasil < 25) {
        teks = "$nama, Anda kelebihan berat Badan";
      } else if (hasil >= 25 && hasil < 30) {
        teks =
            "$nama, Anda Sangat Kelebihan berat badan, anda pada Obese Level 1";
      } else if (hasil >= 30) {
        teks =
            "$nama, Anda Sangat Kelebihan berat badan, anda pada Obese Level 2";
      } else if (hasil >= 17) {
        teks =
            "$nama, Anda Kekurangan Berat Badan, Sebaiknya anda Makan dan Minum lebih banyak lagi";
      } else {
        teks = "$nama, Anda Sanagat Kekurangan Berat Badan";
      }
    });
  }

  void hapus() {
    setState(() {
      b.text = "";
      t.text = "";
      n.text = "";
      teks = "";
      berat = 0;
      tinggi = 0;
      hasil = 0;
      hasilL = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kalkulator BMI"),
        backgroundColor: Colors.orange,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                // Judul
                new Center(
                    child: new Text(
                  "Kalkulator BMI",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Arial",
                      fontWeight: FontWeight.bold),
                )),
                // Gambar
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new Image.asset("assets/images/bmi.png", width: 200.0),
                ),
                // Teks
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new Text(
                    "Apa Itu BMI (Body Mass Index)?",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 5.0),
                  child: new Text(
                    "    Apa Itu BMI (Body Mass Index)?Vista Bunda / November 4, 2013 / No Comments Share BMI dan status berat badan - VistaBundaDotCom Pengertian BMI (Body Mass Index) BMI (body mass index) atau indeks massa tubuh adalah angka yang menyatakan perbandingan berat badan (dalam kilogram) terhadap kuadrat tinggi badan (dalam meter). BMI bukan suatu besaran sehingga tidak memiliki satuan.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new Center(
                    child: new Text(
                      "cek Kesehatanmu dengan Mengisi Form di bawah ini :",
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                // Input Nama
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new TextField(
                    controller: n,
                    decoration: new InputDecoration(
                        hintText: "Masukan Nama Kamu",
                        labelText: "Nama :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                ),
                // Input Berat
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: b,
                    decoration: new InputDecoration(
                        hintText: "Masukan Berat Badan Kamu",
                        labelText: "Berat :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                ),
                // Input Tinggi
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: t,
                    decoration: new InputDecoration(
                        hintText: "Masukan Tinggi Kamu",
                        labelText: "Tinggi :",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                ),
                // Button
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new Row(
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: hitung,
                        child: new Text("Hitung"),
                        color: Colors.blue,
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(right: 20.0),
                      ),
                      new RaisedButton(
                          onPressed: hapus,
                          child: new Text("Hapus"),
                          color: Colors.red)
                    ],
                  ),
                ),
                // Output Berat
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                  child: new Text(
                    "Berat Badan : $berat",
                    style: new TextStyle(fontSize: 17.0),
                  ),
                ),
                // Output Tinggi
                new Text(
                  "Tinggi Badan : $tinggi",
                  style: new TextStyle(fontSize: 17.0),
                ),
                // Output Hasil
                new Text(
                  "NIlai BMI : $hasilL",
                  style: new TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                // Output Teks
                new Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                    child: new Text(
                      "$teks",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
