import 'package:flutter/material.dart';
import 'package:triller_zone/utilities/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;


 Description({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
   // required this.id,
    // required this.id
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              color: Colors.white, icon: Icon(Icons.share), onPressed: () {}),
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Container(
        foregroundDecoration: BoxDecoration(),
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ),
              ])),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Styledtext(thetext: name, size: 24),
              ),
             
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Styledtext(
                  thetext: '⭐ Average Rating - ' + vote,
                  size: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Styledtext(
                      thetext: 'Releasing On - ' + launch_on, size: 30)),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Styledtext(thetext: description, size: 30)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
