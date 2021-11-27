import 'package:flutter/material.dart';
import 'package:instigram_app/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
      ?SizedBox(
          child: InstaStories(),
          height: deviceSize.height * 0.17,
      ):
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    Padding(padding: const EdgeInsets.all(5.0),),
                    Text("imthpk", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.asset("assets/images/profile.jpg", fit: BoxFit.cover)
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.branding_watermark),
                      Icon(Icons.message),
                      Icon(Icons.send),
                    ],
                  ),
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Linked by Pawankumar, pk and 528,331 others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0)),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment ...",
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
          ),
          Divider(),
        ],
      ),
    );
  }
}