import 'package:flutter/material.dart';

class PendidikanDetailPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => PendidikanDetailPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pekerjaan'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem('2011 - 2013', 'System Administrator', Icons.work),
            makeDashboardItem('2013 - 2017', 'Developer', Icons.work),
            makeDashboardItem('2017 - 2019', 'System Analyst', Icons.work),
            makeDashboardItem('2019 - Present', 'Teacher', Icons.work),
            makeDashboardItem('2020 - Present', 'IT Manager', Icons.work),
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, String desc, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.orange,
                    ),
                ),

                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                      new TextStyle(fontFamily:('Kiss'), fontSize: 20.0, color: Colors.orange)),
                ),
                new Center(
                  child: new Text(desc,
                      style:
                      new TextStyle(fontSize: 15.0, color: Colors.orange)),
                )
              ],
            ),
          ),
        ));
  }
}