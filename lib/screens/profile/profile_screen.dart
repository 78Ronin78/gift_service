import 'package:flutter/material.dart';
import 'package:gift_service_2/models/user.dart';
import 'package:gift_service_2/screens/profile_setting/phone_editor.dart';
import 'package:gift_service_2/utils/fade_animation.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffcf3f4),
        centerTitle: false,
        title: Text(
          'Мой профиль',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xff6a515e),
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.dehaze, color: Color(0xFF545D68)),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _topProfile(),
            _midProfile(),
            _bottomProfile(context),
          ],
        ),
      ),
    );
  }

  Widget _bottomProfile(BuildContext context) {
    return Container(
      color: Color(0xfffcf3f4),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(34))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    right: 25.0, left: 25.0, top: 33.0, bottom: 25.0),
                child: Text("Основные сведения",
                    style: TextStyle(
                      color: Color(0xff6a515e),
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: FadeAnimation(
                  0.5,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: 1.0, color: Color(0xffc7abba)),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10))),
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text('+7(924)702-94-35',
                          style: TextStyle(color: Color(0xffc7abba))),
                      subtitle: Text("Нажмите, чтобы изменить номер телефона"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneEditor()));
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                child: FadeAnimation(
                  1.0,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: 1.0, color: Color(0xffc7abba)),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10))),
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text('@${user.name}',
                          style: TextStyle(color: Color(0xffc7abba))),
                      subtitle: Text("Имя пользователя"),
                      onTap: () {
                        /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfile()));*/
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                child: FadeAnimation(
                  1.5,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: 1.0, color: Color(0xffc7abba)),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10))),
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text('О себе',
                          style: TextStyle(color: Color(0xffc7abba))),
                      subtitle: Text("Расскажите немного о себе"),
                      onTap: () {
                        /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfile()));*/
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                child: FadeAnimation(
                  2.0,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: 1.0, color: Color(0xffc7abba)),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10))),
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Платежная карта',
                          style: TextStyle(color: Color(0xffc7abba))),
                      subtitle: Text("Укажите данные платежной карты"),
                      onTap: () {
                        /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfile()));*/
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _midProfile() {
    return Container(
      color: Color(0xfffcf3f4),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Color(0xfffae7e9),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Фотографии',
                  style: TextStyle(
                    color: Color(0xffc7abba),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '3',
                  style: TextStyle(
                    color: Color(0xff6a515e),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'Контакты',
                  style: TextStyle(
                    color: Color(0xffc7abba),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xff6a515e),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'Подарки',
                  style: TextStyle(
                    color: Color(0xffc7abba),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xff6a515e),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _topProfile() {
    return Container(
      color: Color(0xfffae7e9),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Color(0xfffcf3f4),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
            )),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.imgUrl),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              user.name,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff6a515e),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '@${user.name}',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffc7abba),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
