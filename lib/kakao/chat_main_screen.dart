import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(26.0),
                  child: Image.network('https://img.vogue.co.kr/vogue/2022/05/style_627a16c2b312b.jpeg',
                  width: 60, height: 60, fit: BoxFit.cover,),
                ),
                const SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('김태리'),
                        SizedBox(width: 4,),
                        Text('4', ),
                        SizedBox(width: 4,),
                        Icon(Icons.access_time_filled_sharp)
                      ],
                    ),
                    const Text('오늘 밥 뭐 먹을래?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey
                    ),)
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('오후 5:42', style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('12',
                        style: TextStyle(color: Colors.white,),
                    ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
