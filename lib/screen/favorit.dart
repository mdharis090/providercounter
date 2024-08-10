import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {});
                },
                title: Text("item $index"),
                trailing: Icon(Icons.favorite_border_rounded),
              );
            }),
          )
        ],
      ),
    );
  }
}
