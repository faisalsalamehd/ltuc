import 'package:flutter/material.dart';
import 'package:ltuc/presentation/screens/counter_screen/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value ${context.watch<CounterProvider>().counter}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to increment counter
                context.read<CounterProvider>().increment();
              },
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to decrement counter
                context.read<CounterProvider>().decrement();
              },
              child: Text('Decrement Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
