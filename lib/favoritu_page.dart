import 'package:flutter/material.dart';
import 'package:konstitusaun/data.dart';

class Favoritu extends StatefulWidget {
  @override
  _FavorituState createState() => _FavorituState();
}

class _FavorituState extends State<Favoritu> {



  List<ListArtigu> _searchListItems;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: new Column(
          children: <Widget>[
            _searchListView() 
          ],
        ),
      ),
    );
  }




  Widget _searchListView() {
    _searchListItems =  List<ListArtigu>();
    for (int artigu = 0; artigu < lArtigu.length; artigu++) {
      var item = lArtigu[artigu];

    
      if (item.paragraf 
          .toString() 
          .toLowerCase()
          .contains('soberania'.toString().toLowerCase()))   {
        _searchListItems.add(item);
      }
    }
    return _searchAddList();
  }


  Widget _searchAddList() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: _searchListItems.length,
          itemBuilder: (BuildContext context, int index) {
            return new InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          lartigu: _searchListItems[index],
                        ),
                  )),
              child: new Card(
                elevation: 5.0,
                    child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    new Icon(Icons.bookmark),
                    Padding(padding: EdgeInsets.only(right:20.0),),
                    new Text("${_searchListItems[index].artigu}", textAlign: TextAlign.left),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.lartigu});
  final ListArtigu lartigu;

 @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text("${lartigu.artigu}"),
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(lartigu.parte,
            size: 16, isBold: true, padding: EdgeInsets.only(top: 14.0, left: 20.0)),
        text(
          lartigu.titulu,
          color: Colors.black54,
          size: 14,
          isBold: true,
          padding: EdgeInsets.only(top: 4.0, bottom: 14.0, left: 20.0),
        ),
        text(
          lartigu.kapitulu,
          color: Colors.black54,
          size: 14,
          padding: EdgeInsets.only(top: 4.0, bottom: 14.0, left: 20.0),
        ),
        text(
          '${lartigu.artigu} - ${lartigu.subtitulu}',
          color: Colors.black54,
          size: 12,
          padding: EdgeInsets.only(top: 4.0, bottom: 14.0, left: 20.0),
        ),
    
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:20.0),),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.yellow.shade200,
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 160.0,
                color: Colors.yellowAccent,
                child: text('Favorite', color: Colors.black54, size: 13, isBold: true,),
              ),
            ),
          ],
        ),
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 5, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          lartigu.paragraf,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
        appBar: appBar,
        body: Column(
          children: <Widget>[topContent, bottomContent],
        ));
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );

  void setState(bool Function() param0) {}
} 