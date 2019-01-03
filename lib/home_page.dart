import 'package:flutter/material.dart';
import 'package:konstitusaun/drawer.dart';
import 'package:konstitusaun/preamblu_page.dart' as preamblu ;
import 'package:konstitusaun/konstitusaun_page.dart' as kons;
import 'package:konstitusaun/konaba.dart'as kon; 
import 'dart:async';
import 'dart:io';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  TabController controller;

  @override
    void initState() {
      controller = new TabController(vsync: this, length: 3);
      super.initState();
    }

  @override
    void dispose() {
       controller.dispose();
       super.dispose();
    }

    Future<bool> _onBackPressed(){
       return showDialog(
        context: context,
         builder: (context)=>AlertDialog(
          title: Text('Do you want to exit?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes', style: TextStyle(color: Colors.black),),
               onPressed: ()=> exit(0),
            ),      
            FlatButton(
              child: Text('No',  style: TextStyle(color: Colors.black),),
               onPressed: ()=>Navigator.pop(context,false),
            ),
          ],
        )
       );
    }
    

  @override
  Widget build(BuildContext context) {
  return WillPopScope(
    onWillPop: _onBackPressed,
    child:  Scaffold(
      drawer: new KDrawer(),
      appBar: new AppBar(
         centerTitle: true,
          title: new Text('Konstitusaun RDTL'),
          automaticallyImplyLeading: true,
          bottom: new TabBar(controller: controller, 
          tabs: <Widget>[
              new Tab(icon: new Icon(Icons.book),text: ('Preamblu'),),
              new Tab(icon: new Icon(Icons.bookmark),text: ('Konstitusaun'),),
              new Tab(icon: new Icon(Icons.people),text: ('Konaba'),),
          ],
         ),
      ),



      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new preamblu.Preamblu(),
          new kons.Konstitusaun(),
          new kon.Konaba(),
        ],
      ),
    ),
  );
}
}

