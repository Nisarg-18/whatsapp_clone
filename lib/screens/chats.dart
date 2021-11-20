import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/chat_details.dart';
import 'package:whatsapp_ui/screens/dp.dart';
import '../models/chat_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  dp(String photo, var chat, int i) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            title: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Dp(photo: photo, chat: chat);
                      }));
                    },
                    child: Image(image: AssetImage(photo))),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChatDetail(
                                chat: chat,
                                i: i,
                              );
                            }));
                          },
                          icon: Icon(Icons.chat_bubble,
                              color: Theme.of(context).primaryColor)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call,
                              color: Theme.of(context).primaryColor)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.videocam,
                              color: Theme.of(context).primaryColor)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info,
                              color: Theme.of(context).primaryColor)),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Divider(
                  height: 12.0,
                  thickness: 1.0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetail(
                        chat: chats[i],
                        i: i,
                      );
                    }));
                  },
                  leading: InkWell(
                    onTap: () {
                      dp(chats[i].imageUrl, chats[i], i);
                    },
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(chats[i].imageUrl),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chats[i].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(
                        chats[i].time1,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  subtitle: i > 2
                      ? Row(
                          children: [
                            Icon(
                              Icons.done_all,
                              size: 15.0,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              chats[i].message,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chats[i].message,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              height: 23.0,
                              width: 23.0,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                  // trailing:
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
