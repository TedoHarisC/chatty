import 'package:chatty/widgets/chat-tile.dart';
import 'package:flutter/material.dart';
import '../themes/main_themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/icon.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sabrina Carpenter',
                    style: profileTitleTextStyle,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Travel Freelancer',
                    style: profileSubTitleTextStyle,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        SizedBox(height: 16),
                        ChatTile(
                          imageUrl: 'assets/images/icon.png',
                          name: 'Joshuer',
                          text: 'Sorry youre not my ty...',
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/icon.png',
                          name: 'Gabriella',
                          text: 'I saw it clearly and mig...',
                          time: '2:30',
                          unread: false,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group_1.png',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca...',
                          time: '11:11',
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group_2.png',
                          name: 'Angga',
                          text: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group_3.png',
                          name: 'Bentley',
                          text: 'The car which does not...',
                          time: '11:11',
                          unread: false,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
