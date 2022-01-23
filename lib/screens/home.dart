import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MyTextWidget(
          text: 'To do app',
          color: Colors.indigo[900],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('eloszka');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
