import 'package:flutter/material.dart';
import 'package:the_movies_corner_flutter/styles/themes.dart';

class TheMoviesCornerApp extends StatefulWidget {

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<TheMoviesCornerApp> {
  int _selectedTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {});
    _selectedTabIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    final title = 'The movie corners';
    return MaterialApp(
      title: title,
      theme: customAppTheme.copyWith(canvasColor: customAppTheme.primaryColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
            Container(
            width: 200.0,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://image.tmdb.org/t/p/w600_and_h900_bestv2/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          ),
        Container(
          width: 200.0,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://image.tmdb.org/t/p/w600_and_h900_bestv2/keym7MPn1icW1wWfzMnW3HeuzWU.jpg"),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.redAccent,
          ),
        ),
        Container(
          width: 200.0,
          margin: const EdgeInsets.all(8.0),
          child:
          Image(
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w600_and_h900_bestv2/lcq8dVxeeOqHvvgcte707K0KVx5.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 200.0,
          margin: const EdgeInsets.all(8.0),
          child:
          Image(
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w600_and_h900_bestv2/2bXbqYdUdNVa8VIWXVfclP2ICtT.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 200.0,
          margin: const EdgeInsets.all(8.0),
          child:
          Image(
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w600_and_h900_bestv2/zfE0R94v1E8cuKAerbskfD3VfUt.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
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
    currentIndex: _selectedTabIndex,
    onTap: _onItemTapped,
    ),
    )
    ,
    );
  }
}

