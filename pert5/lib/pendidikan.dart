import 'package:flutter/material.dart';
import 'pekerjaandetail.dart';

class PendidikanPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => PendidikanPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pendidikan"),
        centerTitle: true,
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children : [
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/4)),
                  Text('S1 - Bachelor of Computer Science', style: TextStyle(fontSize: 20, color: Colors.orange)),
                  Text('Esa Unggul University', style: TextStyle(fontFamily:('Kiss'),fontSize: 20, color: Colors.orange)),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text('S2 - Magister of Computer Science', style: TextStyle(fontSize: 20, color: Colors.orange)),
                  Text('Esa Unggul University', style: TextStyle(fontFamily:('Kiss'),fontSize: 20, color: Colors.orange)),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).push(
                        PendidikanDetailPage.route(),
                      ),
                      child: Text("Pekerjaan"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}