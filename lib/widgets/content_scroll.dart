import 'package:flutter/material.dart';
import 'package:gift_service_2/screens/gifts_market/gift_detail_screen.dart';

class ContentScroll extends StatelessWidget {
  final List<String> images;
  final String title;
  final double imageHeight;
  final double imageWidth;
  final Function onTap;
  bool isFavorite = false;

  ContentScroll(
      {this.images,
      this.title,
      this.imageHeight,
      this.imageWidth,
      this.onTap,
      this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff6a515e),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                //onTap: () => print('View $title'),
                onTap: onTap,
                child: Icon(
                  Icons.arrow_forward,
                  color: Color(0xff6a515e),
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: imageHeight,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print('Сделался клик');
                  _buildCard('Подарок', '5 монет', images[index], context);
                },
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    width: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      /*Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                isFavorite == false
                                    ? Icon(Icons.favorite,
                                        color: Color.fromRGBO(143, 148, 251, 1))
                                    : Icon(Icons.favorite_border,
                                        color: Color.fromRGBO(143, 148, 251, 1))
                              ])),
                      */
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Container(
                          height: 95.0,
                          width: 95.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.0),
                      /*Text("10%",
                                      style: TextStyle(
                                          color: Color.fromRGBO(143, 148, 251, 1),
                                          fontFamily: 'Varela',
                                          fontSize: 14.0)),*/
                      Container(
                        width: 100.0,
                        child: Center(
                          child: Text(
                            '5 монет',
                            maxLines: 2,
                            style: TextStyle(
                                height: 1.4,
                                color: Color(0xff6a515e),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
                    ])),
              );
              /*return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                width: imageWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );*/
            },
          ),
        ),
      ],
    );
  }

  _buildCard(String name, String price, String imgPath, context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GiftDetailScreen(
            assetPath: imgPath, giftPrice: price, giftName: name)));
  }
}
