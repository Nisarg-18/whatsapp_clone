import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  final chat, i;
  const ChatDetail({Key? key, required this.chat, required this.i})
      : super(key: key);

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  TextEditingController _messageController = TextEditingController();
  String message = '';
  // send() {
  //   if (_messageController.text.length > 0) {
  //     setState(() {
  //       FloatingActionButton(
  //         onPressed: () {},
  //         child: Icon(Icons.send),
  //       );
  //     });
  //   } else {
  //     setState(() {
  //       FloatingActionButton(
  //         onPressed: () {},
  //         child: Icon(Icons.mic),
  //       );
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            // iconSize: 10.0,

            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Transform.translate(
          offset: Offset(-33, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.chat.imageUrl),
              ),
              SizedBox(width: 7.0),
              Text(widget.chat.name)
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.15,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
            ),
          ),
          widget.i > 2
              ? Stack(
                  children: [
                    Positioned(
                        top: 470,
                        left: MediaQuery.of(context).size.width / 2 - 30,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFd3ebf5),
                          ),
                          child: Text(
                            'Today',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        )),
                    Positioned(
                      top: 520.0,
                      left: 10,
                      child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          padding: EdgeInsets.all(13.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.chat.message1,
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                                child: Text(
                                  widget.chat.time,
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              )
                            ],
                          )),
                    ),
                    Positioned(
                      top: 570.0,
                      left: 130.0,
                      child: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.65),
                          padding: EdgeInsets.all(13.0),
                          decoration: BoxDecoration(
                              color: Color(0xFFe3ffc6),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.chat.message),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                                    child: Text(
                                      widget.chat.time1,
                                      style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.done_all,
                                    size: 17.0,
                                    color: Colors.lightBlue,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Positioned(
                        top: 470,
                        left: MediaQuery.of(context).size.width / 2 - 30,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFd3ebf5),
                          ),
                          child: Text(
                            'Today',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        )),
                    Positioned(
                      top: 570.0,
                      left: 10,
                      child: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.7),
                          padding: EdgeInsets.all(13.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.chat.message),
                              Padding(
                                padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                                child: Text(
                                  widget.chat.time1,
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      left: 150.0,
                      top: 520,
                      child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.6,
                          ),
                          padding: EdgeInsets.all(13.0),
                          decoration: BoxDecoration(
                              color: Color(0xFFe3ffc6),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.chat.message1,
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                                    child: Text(
                                      widget.chat.time1,
                                      style: TextStyle(fontSize: 11.0),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.done_all,
                                    size: 17.0,
                                    color: Colors.lightBlue,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextFormField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        hintText: 'Type a message',
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                              width: 2, color: Theme.of(context).accentColor),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 4.0,
                                color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(25.0)),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                            )),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.attach_file, color: Colors.grey)),
                      ),
                      onChanged: (value) => message = value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 47,
                    width: 47,
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                        size: 21.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
