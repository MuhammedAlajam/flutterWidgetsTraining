import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learning flutter Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('hello !!!');
              },
              icon: const Icon(Icons.call_to_action)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/me.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(color: Colors.black),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: const Center(
              child: Text(
                'this is a container !',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isOn ? Colors.blueGrey : Colors.blue,
                  ),
                  onPressed: () {
                    debugPrint('elevated button pressed !');
                  },
                  child: const Text('elevated button')),
              OutlinedButton(
                  onPressed: () {
                    debugPrint('Outlined button pressed !');
                  },
                  child: const Text('Outlined button')),
            ],
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('tapped !');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
                Text('row widget !'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Switch(
              value: isOn,
              onChanged: (bool val) {
                setState(() {
                  isOn = val;
                });
              }),
          Image.asset('images/me.jpg'),
        ]),
      ),
    );
  }
}
