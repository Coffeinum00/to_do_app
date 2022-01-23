import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> myTasks = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MyTextWidget(
          text: 'To do',
          color: Colors.lightBlue[900],
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
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 120.0,
              color: Colors.lightBlue[200],
              child: MyTextWidget(
                color: Colors.lightBlue[500],
                text: "input",
                size: 25.00,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: myTasks.length,
                itemBuilder: (context, index) {
                  return mytask(index);
                }),
          )
        ],
      ),
    );
  }

  Widget mytask(index) {
    bool ischecked = false;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(value: ischecked, onChanged: (ischecked) {}),
            MyTextWidget(
                text: myTasks[index].toString(),
                color: Colors.blueGrey[200],
                size: 25.0),
          ],
        ),
        Divider(
          thickness: 3,
          color: Colors.lightBlue[100],
        )
      ],
    );
  }
}
