import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gift_service_2/blocs/chat_list_bloc/chat_list_bloc.dart';
import 'package:gift_service_2/blocs/home_bloc/home_bloc.dart';
import 'package:gift_service_2/models/user.dart';
import 'package:gift_service_2/screens/profile/profile_screen.dart';

import 'chat_list/chat_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                    accountName: GestureDetector(
                      onTap: () {
                        /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfile()));*/
                      },
                      child: Text("Имя пользователя",
                          style: TextStyle(color: Color(0xff6a515e))),
                    ),
                    accountEmail: Text(user.email,
                        style: TextStyle(color: Color(0xff6a515e))),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(user.email.substring(0, 1).toUpperCase(),
                          style: TextStyle()),
                    )),
                /*DrawerHeader(
                child: Text('Профиль'),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 148, 251, 1),
                ),
              ),*/
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Сообщения'),
                  //subtitle: Text("Общение с друзьями"),
                  onTap: () {
                    /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));*/
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Создать группу'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Контакты'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.card_giftcard),
                  title: Text('Подарки'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Звонки'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bookmark),
                  title: Text('Избранное'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Настройки'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(Icons.group_add),
                  title: Text('Пригласить друзей'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Выйти'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          extendBody: true,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              topLeft: Radius.circular(45),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: state.page,
              backgroundColor: Theme.of(context).accentColor,
              onTap: (idx) {
                _pageController.jumpToPage(idx);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text('Профиль',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6a515e))),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Theme.of(context).primaryColor,
                  ),
                  activeIcon: Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                  title: Text('Чаты',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6a515e))),
                )
              ],
            ),
          ),
          body: PageView(
            //physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (idx) {
              if (idx == 0) {
                context.bloc<HomeBloc>().add(ChangeProfile());
              } else {
                context.bloc<HomeBloc>().add(ChangeChatList());
              }
              _pageController.jumpToPage(idx);
            },
            children: <Widget>[
              ProfileScreen(
                user: user,
              ),
              BlocProvider(
                  create: (context) =>
                      ChatListBloc(user: user)..add(ChatListStart()),
                  child: ChatListScreen(user: user)),
            ],
          ),
        );
      },
    );
  }
}
