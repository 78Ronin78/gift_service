import 'package:flutter/material.dart';
import 'package:gift_service_2/models/local_gifts_model.dart';
import 'package:gift_service_2/widgets/content_scroll.dart';

class GiftsMarket extends StatefulWidget {
  @override
  _GiftsMarketState createState() => _GiftsMarketState();
}

class _GiftsMarketState extends State<GiftsMarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xfffcf3f4),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.close),
              color: Color(0xff6a515e),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          title: Text(
            'Выберите подарок',
            style: TextStyle(
                color: Color(0xff6a515e),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Color(0xff6a515e),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /*ContentScroll(
                images: eigthMarth,
                title: '8 марта',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),*/
              ContentScroll(
                images: february,
                title: '23 февраля',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: animals,
                title: 'Животные',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: eat,
                title: 'Еда',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: forGirls,
                title: 'Девушкам',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: jokes,
                title: 'Приколы',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: lovers,
                title: 'Любовные',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: luxury,
                title: 'Роскошь',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: newYear,
                title: 'Новый год',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: patriotic,
                title: 'Патриотические',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
              ContentScroll(
                images: sports,
                title: 'Спорт',
                imageHeight: 210.0,
                imageWidth: 150.0,
              ),
            ],
          ),
        ));
  }
}
