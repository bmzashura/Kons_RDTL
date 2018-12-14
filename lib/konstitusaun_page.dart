import 'package:flutter/material.dart';
import 'package:konstitusaun/data.dart';
import 'package:konstitusaun/drawer.dart';

class Konstitusaun extends StatefulWidget {
  @override
  _KonstitusaunState createState() => _KonstitusaunState();
}

class _KonstitusaunState extends State<Konstitusaun> {
  var _searchEdit = new TextEditingController();

  bool _isSearch = true;

  String _searchText = "";

  List<ListArtigu> _searchListItems;

  @override
  void initState() {
    super.initState();
  }

  _KonstitusaunState() {
    _searchEdit.addListener(() {
      if (_searchEdit.text.isEmpty) {
        setState(() {
          _isSearch = true;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearch = false;
          _searchText = _searchEdit.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: new Column(
          children: <Widget>[
            _searchBox(),
            _isSearch ? _listView() : _searchListView()
          ],
        ),
      ),
    );
  }

  Widget _searchBox() {
    return new Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(border: Border.all(width: 1.0)),
      child: new TextField(
        controller: _searchEdit,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: new TextStyle(color: Colors.grey[300]),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _listView() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: lArtigu.length,
          itemBuilder: (BuildContext context, int index) {
            return new InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          lartigu: lArtigu[index],
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
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    ),
                    new Text("${lArtigu[index].artigu}",
                        textAlign: TextAlign.left),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _searchListView() {
    _searchListItems = List<ListArtigu>();
    for (int artigu = 0; artigu < lArtigu.length; artigu++) {
      var item = lArtigu[artigu];

      if (item.paragraf
          .toString()
          .toLowerCase()
          .contains(_searchText.toString().toLowerCase())) {
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
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    ),
                    new Text("${_searchListItems[index].artigu}",
                        textAlign: TextAlign.left),
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
    final drawer = KDrawer();
    final appBar = AppBar(
      elevation: .5,
      title: Text("${lartigu.artigu}"),
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(lartigu.parte,
            size: 16,
            isBold: true,
            padding: EdgeInsets.only(top: 14.0, left: 20.0)),
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
            Padding(
              padding: EdgeInsets.only(left: 20.0),
            ),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.yellow.shade200,
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 160.0,
                color: Colors.yellowAccent,
                child: text(
                  'favorite',
                  color: Colors.black54,
                  size: 13,
                  isBold: true,
                ),
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
    final bottomContent =  Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Text(
                lartigu.paragraf,
                style: TextStyle(fontSize: 13.0, height: 1.5),
              ),
            ),
      );

    return Scaffold(
        drawer: drawer,
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
}
