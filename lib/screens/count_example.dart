import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Count with provider"),
        ),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          return Text(value.count.toString(),
              style: const TextStyle(fontSize: 25));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setcount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
