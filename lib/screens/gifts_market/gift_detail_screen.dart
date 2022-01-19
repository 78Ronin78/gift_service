import 'package:flutter/material.dart';

class GiftDetailScreen extends StatelessWidget {
  final assetPath, giftPrice, giftName;

  GiftDetailScreen({this.assetPath, this.giftPrice, this.giftName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffcf3f4),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff6a515e)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Подарок',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xff6a515e))),
        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none,
                color: Color.fromRGBO(143, 148, 251, 1)),
            onPressed: () {},
          ),
        ],*/
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        /*Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Подарок',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(143, 148, 251, 1))),
        ),*/
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child: Text(giftPrice,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6a515e))),
        ),
        SizedBox(height: 10.0),
        /*Center(
          child: Text(giftName,
              style: TextStyle(
                  color: Color.fromRGBO(143, 148, 251, 1),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),*/
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text('Кому',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6a515e))),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
          child: TextField(
            //controller: _commentController,
            style: TextStyle(fontFamily: 'Montserrat'),
            minLines: 2,
            maxLines: 5,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Ваше сообщение',
              filled: true,
              fillColor: Colors.white,
              hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey[300]),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey[300]),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xffffae88)),
                child: Center(
                    child: Text(
                  'Отправить подарок за ' + giftPrice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))))
      ]),
    );
  }
}
