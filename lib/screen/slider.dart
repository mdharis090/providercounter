import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercount/provider/mult_provider.dart';
import 'package:flutter/foundation.dart';

class TScreen extends StatefulWidget {
  const TScreen({Key? key}) : super(key: key);

  @override
  State<TScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<TScreen> {
  @override
  double value = 1.0;
  Widget build(BuildContext context) {
    final he = Provider.of<hello>(context, listen: true);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              value: he.value,
              onChanged: (val) {
                he.setvalue(val);
              }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  color:
                      Color.fromARGB(255, 93, 101, 175).withOpacity(he.value),
                  child: const Center(child: Text("Light theme")),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 238, 11, 11).withOpacity(he.value),
                  child: const Center(child: Text("dark theme")),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
