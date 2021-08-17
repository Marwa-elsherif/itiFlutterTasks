import 'package:daythree/views/pages/TodoDetails.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final bool completed;
  final String title;
  final int userId;
  final int id;

  MyCard({this.completed, this.title, this.userId, this.id});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TodoDetails(
                title: widget.title,
                completed: widget.completed,
                userId: widget.userId,
                id: widget.id,
              ),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.17,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.red[700],
                      fontStyle: FontStyle.italic),
                ),
                // Text(widget.userId.toString()),
                // Text(widget.id.toString()),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text('Tap to see more...'),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    // child: Text(
                    //   widget.completed.toString(),
                    // ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
