import 'package:flutter/material.dart';

class TodoDetails extends StatefulWidget {
  final bool completed;
  final String title;
  final int userId;
  final int id;

  TodoDetails({this.completed, this.title, this.userId, this.id});
  @override
  _TodoDetailsState createState() => _TodoDetailsState();
}

class _TodoDetailsState extends State<TodoDetails> {
  // String myInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //   actions: [InkWell(onTap: () {}, child: Icon(Icons.home))],
          ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('completed value  = ' + widget.completed.toString()),
              Text('userId value  = ' + widget.userId.toString()),
              Text('Id value  = ' + widget.id.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
