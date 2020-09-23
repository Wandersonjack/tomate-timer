import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:tomate/screens/screens.dart';
import 'package:tomate/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          children: <Widget>[
            TasksScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onTappedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.activity),
            title: Text('Tasks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }


  void _onTappedItem(int index){
    setState((){
      _currentIndex = index;
      _pageController.animateToPage(index, duration: Duration(microseconds: 500,), curve: Curves.easeOut);
    });
  }

}


