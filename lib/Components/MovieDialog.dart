import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:movies_app/Components/Colors.dart';

class MovieDialog extends StatelessWidget {
  final String title;
  final DecorationImage image;
  final String description;
  final String rate;
  final String date;

  MovieDialog({this.date, this.description, this.image, this.rate, this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100, left: 15, bottom: 10, right: 15),
            margin: EdgeInsets.only(top: 90),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: backgroundCard,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Text(
                  title,
                  style: new TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            
                            Icons.star_border,
                            color: Colors.yellow.withOpacity(0.5),
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            rate + '/10',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.white60),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today,
                            color: Colors.yellow.withOpacity(0.5),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            date,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.white60),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                new Text(
                  description,
                  style: new TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.white.withOpacity(0.6)),
                  textAlign: TextAlign.justify,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    child: Text('OK',
                        style: new TextStyle(color: Colors.deepOrange)),
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 20,
              right: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 73),
                child: Container(
                  height: 185,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: image),
                ),
              )),
        ],
      ),
    );
  }
}
