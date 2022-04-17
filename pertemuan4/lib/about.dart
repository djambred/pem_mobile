import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => AboutPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("About"),
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
                  CircleAvatar(
                    radius: 105,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/foto.jpg'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  Text('JEFRY SUNUPURWA ASRI', style: TextStyle(fontFamily:('Comics'), fontSize: 20, fontWeight: FontWeight.w700, color: Colors.orange)),
                  /*Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text('IT Infrastructure, IT Architecture, System Analyst', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Text(
                        'Jefry is a career expert with a solid background education for Information Technology. Reliable and goal oriented with experience for system design topology architecture and providing comprehensive support for it.',
                            style: TextStyle(fontFamily:('Comics'), fontSize: 12, fontWeight: FontWeight.w700)),
                  ),*/

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}