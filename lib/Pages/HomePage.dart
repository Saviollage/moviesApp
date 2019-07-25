import 'package:flutter/material.dart';
import 'package:movies_app/Components/DarkPainter.dart';
import 'package:movies_app/Components/ListPopularFilmsWidget.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
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
                  child: Text('Saviollage',
                      style: new TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 30,
                          fontWeight: FontWeight.w300)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      child: ListTile(
                        leading: Icon(Icons.search),
                        title: Text('Procurar'),
                      ),
                    ),
                    onTap: () =>
                        _scaffoldKey.currentState.showSnackBar(new SnackBar(
                      content: Text('Ainda não implementado', style: new TextStyle(
                        color: Colors.black
                      ),),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.white,
                      action: SnackBarAction(
                        label: 'OK',
                        textColor: Colors.deepOrange,
                        onPressed: (){},
                      ),
                    )),
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
