import 'package:daythree/models/todo.dart';
import 'package:daythree/services/todoService.dart';
import 'package:daythree/views/widgets/MyCard.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  bool loading = true;
  List<Todo> todo = [];

  getData() async {
    todo = await TodoService().gettodos();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.black,
            ))
          : ListView.builder(
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCard(
                  title: todo[index].title,
                  completed: todo[index].completed,
                  userId: todo[index].userId,
                  id: todo[index].id,
                );
              },
            ),
    );
  }
}
