
import 'package:flutter/material.dart';
import 'package:konstitusaun/navigator.dart';

class KDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Drawer(
      child: new ListView(
        primary: false,
        children: <Widget>[
          new Container(
            color: Colors.red,
            height: 180.0,
          ),
          new GestureDetector(
            child: new Container(
              color: Colors.grey[200],
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte",
                style: new TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            onTap: () { /*...*/ }
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte I",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => MyNavigator.goToHome(context)//{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new MyApp();}));},
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                'Parte II',
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new First();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte III ",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte IV ",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte V ",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte VI ",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Parte VII ",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              color: Colors.grey[200],
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Preference",
                style: new TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            onTap: () { /*...*/ },
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Settings",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0
                ),
              ),
            ),
            onTap: () => null //{Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Two();}));}
          ),
        ],
      ),
    );
  }
}