import 'package:flutter/material.dart';
import 'package:ch8_bottom_navigation_bar/birthday/birthday.dart';
import 'package:ch8_bottom_navigation_bar/chat/chat.dart';
import 'package:ch8_bottom_navigation_bar/live/live.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _listPages = [];
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages
      ..add(Birthday())
      ..add(Chat())
      ..add(Live());
    _currentPage = _listPages[_currentIndex];
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.wechat_outlined),
            label: 'BananTalk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Moments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Connect',
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}
