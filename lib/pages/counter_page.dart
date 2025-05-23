import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EFFB), // Warna latar mirip dengan gambar
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCounterButton(Icons.remove, () {
                  setState(() {
                    _counter--;
                  });
                }),
                const SizedBox(width: 20),
                _buildCounterButton(Icons.add, () {
                  setState(() {
                    _counter++;
                  });
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterButton(IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(18),
        backgroundColor: Colors.purple.shade100,
        elevation: 6,
        shadowColor: Colors.grey.shade300,
      ),
      child: Icon(icon, color: Colors.purple.shade700),
    );
  }
}