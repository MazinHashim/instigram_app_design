import 'package:flutter/material.dart';
import './insta_body.dart';

class InstaHome extends StatefulWidget {
  InstaHome({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: Text("Instagram"),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  final bottomBar = SizedBox(
    height: 50.0,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: null,
          ),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: bottomBar,
    );
  }
}
