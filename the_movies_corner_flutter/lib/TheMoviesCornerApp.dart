import 'package:flutter/material.dart';
import 'package:the_movies_corner_flutter/bottom_nav_bar.dart';
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
    final List<String> movies = [
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/keym7MPn1icW1wWfzMnW3HeuzWU.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/lcq8dVxeeOqHvvgcte707K0KVx5.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/2bXbqYdUdNVa8VIWXVfclP2ICtT.jpg",
      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/zfE0R94v1E8cuKAerbskfD3VfUt.jpg",
      "https://image.tmdb.org/t/p/w185_and_h278_bestv2/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
      "https://image.tmdb.org/t/p/w185_and_h278_bestv2/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg",
      "https://image.tmdb.org/t/p/w185_and_h278_bestv2/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg",
      "https://image.tmdb.org/t/p/w185_and_h278_bestv2/5Kg76ldv7VxeX9YlcQXiowHgdX6.jpg"
    ];
    return MaterialApp(
      title: title,
      theme: customAppTheme.copyWith(canvasColor: customAppTheme.primaryColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              title),
          leading: IconButton(
            onPressed: () => print('Menu'),
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: customAppTheme.accentColor,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () => print('Search'),
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: customAppTheme.accentColor,
            )
          ],
        ),
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            height: 350.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 210.0,
                    height: 200.0,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(movies[index]),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    alignment: FractionalOffset.bottomRight,
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 450.0,
            child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 2,
                children: movies.map((String url) {
                  return Container(
                    height: 20,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(url),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    alignment: FractionalOffset.bottomRight,
                  );
                }).toList()),
          )
        ]),
        bottomNavigationBar:
            CustomBottomNavigationBar(_selectedTabIndex, _onItemTapped),
      ),
    );
  }
}
