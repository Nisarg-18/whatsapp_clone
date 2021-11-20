import 'package:flutter/material.dart';
import '../models/call_model.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  call_status(int i) {
    if (i == 4) {
      return Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 15.0,
      );
    } else if (i % 2 == 0) {
      return Icon(
        Icons.call_received,
        color: Theme.of(context).primaryColor,
        size: 15.0,
      );
    } else if (i % 2 != 0) {
      return Icon(
        Icons.call_made,
        color: Theme.of(context).primaryColor,
        size: 15.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: calls.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Divider(
                  height: 12.0,
                  thickness: 1.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(calls[i].imageUrl),
                  ),
                  title: Text(
                    calls[i].name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  subtitle: Row(
                    children: [
                      call_status(i),
                      Text(
                        calls[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: i > 2
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.videocam,
                              color: Theme.of(context).primaryColor))
                      : IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Theme.of(context).primaryColor,
                          )),
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
