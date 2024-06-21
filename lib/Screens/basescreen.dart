import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetpractice/Screens/cardscreen.dart';
import 'package:widgetpractice/Screens/homescreen.dart';

class basescreeN extends StatefulWidget {
  const basescreeN({super.key});

  @override
  State<basescreeN> createState() => _basescreeNState();
}

class _basescreeNState extends State<basescreeN> {
  int _selectedindex = 0;
  static const List<Widget> WidgetOption = <Widget>[
    Homescreen(),
    Cardscreen(),
    Homescreen(),
    Cardscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetOption.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.deepPurple,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.creditCard,
              ),
              label: 'Card'),
          const BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.cog,
              ),
              label: 'Setting'),
          const BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.chartBar,
              ),
              label: 'Overview'),
        ],
        currentIndex: _selectedindex,
        onTap: (int index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),
    );
  }
}
