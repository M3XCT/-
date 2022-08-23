import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flut/pages/page1.dart';
import 'package:flut/pages/page2.dart';
import 'package:flut/pages/page3.dart';
import 'package:flut/pages/page4.dart';
import 'package:flut/pages/page5.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    page1(),
    page2(),
    page3(),
    page4(),
    page5(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Sample'),


      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor:Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Главная',

          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Каталог',

          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_dock_left_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_dock_left_filled),
              label: 'Вход',

          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_mail_inbox_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_mail_inbox_filled),
              label: 'Корзина',

          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: 'Профиль',

          ),
        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
    );
  }
}