import 'package:flutter/material.dart';
import 'package:ltuc/presentation/screens/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<HomeProvider>().currentIndex.toString(),
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<HomeProvider>().incrementIndex();
              },
              child: const Text('Increment Index'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Change the current index
                context.read<HomeProvider>().decrementIndex();
              },
              child: const Text('Decrement Index'),
            ),
          ],
        ),
      ),
    );
  }
}
