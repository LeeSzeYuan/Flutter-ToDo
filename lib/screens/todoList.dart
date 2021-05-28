import 'package:flutter/material.dart';
import 'package:todo/screens/newTodo.dart';

class todoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do List"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: <Widget>[
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 40.0),
              title: Text("Eat Food"),
              subtitle: Text("Ayam Penyet is the best"),
              trailing: Icon(Icons.delete),
              onTap: () {
                // return showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       AlertDialog(
                //           title: new Text('Mark as done?'),
                //           actions: <Widget>[
                //             new FlatButton(
                //                 onPressed: () => Navigator.of(context).pop()),
                //             new FlatButton(
                //               child: new Text('MARK AS DONE'),
                //             )
                //           ]);
                //     });
              },
              // dense: true,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
              child: ListTile(
            leading: FlutterLogo(size: 40.0),
            title: Text("Eat Food"),
            subtitle: Text("Ayam Penyet is the best"),
            trailing: Icon(Icons.delete),
            // dense: true,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "New To-Do",
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => newTodo()));
        },
      ),
    );
  }
}
