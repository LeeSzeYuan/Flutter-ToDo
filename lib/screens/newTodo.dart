import 'package:flutter/material.dart';

class newTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add To-Do"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Form(
          // key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'To-Do'
                ),
              ),

              SizedBox(height: 5.0,),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Side Note'
                ),
              ),

              
              SizedBox(height: 5.0,),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  // border: UnderlineInputBorder(),
                  labelText: 'Description'
                ),
              ),

              SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Add"),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(500, 50), 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
