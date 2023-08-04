// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shop/providers/counter_provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Center(
          child: Text("Exemplo counter"),
        ),
      ),
      body: Column(
        children: [
          Text(CounterProvider.of(context)?.state.value.toString() ?? ""),
          IconButton(
            onPressed: () {
              CounterProvider.of(context)?.state.inc();
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              CounterProvider.of(context)?.state.dec();
            },
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
