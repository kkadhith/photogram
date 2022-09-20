import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children = [
  Center(child: Text("HOME")),
    Center(child: Text("EXPLORE")),
    Center(child: Text("SEARCH")),
    Center(child: Text("REELS")),
    Center(child: Text("PROFILE")),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        // onTap "returns" the index of each item, and _navigateBottomBar will change currIndex.
        onTap: _navigateBottomBar,
        // To increase the amount of items (>3)
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(icon: Icon(Icons.explore), label: "explore"),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
                BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "reels"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
              ],
      ),
    );
  }
}
