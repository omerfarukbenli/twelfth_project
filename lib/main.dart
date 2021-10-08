import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled6/second.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled6/third.dart';
import 'first.dart';
import 'fourth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    First(),
    Second(),
    Third(),
    Fourth(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app),)
          ],
          centerTitle: true,
          title: const Text('ömer'),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow,
          iconSize: 40,
          selectedFontSize: 18,
          unselectedFontSize: 16,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.deepOrange,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  FontAwesomeIcons.home,
                  size: 20,
                ),
                label: 'Ana sayfa'),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  FontAwesomeIcons.heart,
                  size: 20,
                ),
                label: 'Favoriler'),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  FontAwesomeIcons.commentAlt,
                  size: 20,
                ),
                label: 'Mesajlaşma'),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 20,
                ),
                label: 'Profil'),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ömer Faruk Benli'),
                accountEmail: Text('omerfarukbenli@hotmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/s.jpg',
                        width: 90, height: 90, fit: BoxFit.cover),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/ss.jpg'), fit: BoxFit.cover),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
                onTap: () {
                }
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                  onTap: () {
                  }
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                  onTap: () {
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
