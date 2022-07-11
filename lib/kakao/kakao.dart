import 'package:flutter/material.dart';
import 'package:kakao_chat_ui/kakao/chat_main_screen.dart';
import 'package:kakao_chat_ui/kakao/etc_main_screen.dart';
import 'package:kakao_chat_ui/kakao/friends_screen.dart';
import 'shopping_main_screen.dart';
import 'view_main_screen.dart';

class KakaoMainScreen extends StatefulWidget {
  const KakaoMainScreen({Key? key}) : super(key: key);

  @override
  State<KakaoMainScreen> createState() => KakaoMainScreenState();
}

class KakaoMainScreenState extends State<KakaoMainScreen> {
  // const KakaoMainScreenState({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  final screens = [
    FriendsScreen(),
    ChatScreen(),
    ViewScreen(),
    ShoppingScreen(),
    EtcScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              '채팅',
            ),
            SizedBox(
              width: 15.0,
              height: 3.0,
              child: Card(child: Text('')),
            ),
            Text('오픈채팅'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.maps_ugc_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.music_note_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
              color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility, color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded, color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded, color: Colors.white,),
            label: '',
          ),
        ],
      ),
    );
  }

}
