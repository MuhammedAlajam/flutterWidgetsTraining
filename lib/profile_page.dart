import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('person : ${index + 1}'),
          leading: const Icon(Icons.person),
          onTap: () {
            debugPrint('hello person $index');
          },
        );
      },
    );
  }
}
