import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercount/provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Column(
        children: [
          Text(counter.count.toString()),
          FloatingActionButton(
            onPressed: () {
              counter.SetCount();
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
