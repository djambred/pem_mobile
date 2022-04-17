import 'package:flutter/material.dart';
import 'homepage.dart';
import 'pendidikan.dart';
import 'profile.dart';
import 'settings.dart';
import 'exit.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });


  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: HomePage(),
      icon: Icon(Icons.home),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: ProfilePage(),
      icon: Icon(Icons.assignment_ind),
      title: Text("Profile"),
    ),
    TabNavigationItem(
      page: PendidikanPage(),
      icon: Icon(Icons.school),
      title: Text("Profile"),
    ),
/*    TabNavigationItem(
      page: SettingsDetailPage(),
      icon: Icon(Icons.settings),
      title: Text("Setting"),
    ),
    TabNavigationItem(
      page: ExitDetailPage(),
      icon: Icon(Icons.settings),
      title: Text("Setting"),
    ),*/
  ];
}