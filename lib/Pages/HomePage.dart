import 'package:flutter/material.dart';
import 'package:movies_app/Components/Colors.dart';
import 'package:movies_app/Components/DarkPainter.dart';
import 'package:movies_app/Components/ListPopularFilmsWidget.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF121212),
        body: CustomPaint(
            painter: DarkPainter(),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Center(
                    child: Text('Filmes',
                        style: new TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w300)),
                  ),
                ),
                Center(
                  child: Text('Savollage',
                      style: new TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 30,
                          fontWeight: FontWeight.w300)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.deepOrange,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        hintText: 'Filme',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                ListTile(
                  title: Text('Populares',
                      style: new TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
                new Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  child: ListPopularFilms(),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )));
  }
}
