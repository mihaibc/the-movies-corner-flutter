import 'package:flutter/material.dart';
import 'package:the_movies_corner_flutter/styles/themes.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int _selectedTabIndex =0;
  Function(int) _onItemTapped;
  CustomBottomNavigationBar(int selectedTabIndex, Function(int) onItemTapped) {
    _selectedTabIndex = selectedTabIndex;
    _onItemTapped = onItemTapped;
  }
  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          title: Text("Bookmarked"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          title: Text("App info"),
        ),
      ],
      currentIndex: widget._selectedTabIndex,
      onTap: widget._onItemTapped,
      selectedItemColor: customAppTheme.accentColor,
      unselectedItemColor: customAppTheme.primaryColorLight.withOpacity(0.5),
    );
  }
}
