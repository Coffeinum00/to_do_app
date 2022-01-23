import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> myTasks = [];

  Map<String, dynamic> myFirstMap = {
    'checkbox': false,
    'text': 'test',
  };
  @override
  void initState() {
    super.initState();
    myTasks.add(myFirstMap);
    // przesuwanie całej linijki kodu to alt+strzałkaGóra/Doł ;)
  }

  TextEditingController controller = TextEditingController();

  String myInput = '';

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
          mybuttonicon(),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              // height: 60.0,
              color: Colors.lightBlue[200],
              child: TextFormField(
                // onChanged: (string) {
                //   setState(() {
                //     myInput = string;
                //     myTasks.add(myInput);
                //   });
                // },
                controller: controller,
                minLines: 1,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  prefixIcon: mybuttonicon(),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
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

  IconButton mybuttonicon() {
    return IconButton(
      onPressed: () {
        setState(() {
          // myTasks.add(controller.text);
          controller.clear();
        });
      },
      icon: Icon(Icons.add),
    );
  }

  Widget mytask(index) {
    bool ischecked = false;
    return Dismissible(
      key: UniqueKey(),
      // onDismissed: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(value: ischecked, onChanged: (ischecked) {}),
              MyTextWidget(
                  text: myTasks[index].values.elementAt(1).toString(),
                  color: Colors.blueGrey[200],
                  size: 25.0),
            ],
          ),
          Divider(
            thickness: 3,
            color: Colors.lightBlue[100],
          )
        ],
      ),
    );
  }
}
