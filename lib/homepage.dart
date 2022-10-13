import 'package:flutter/material.dart';
import 'package:habit_tracker/utilities/habits.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Never Give up!!'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(),
          HabetTile(
            habitname: 'Reading',
          ),
          HabetTile(
            habitname: 'Excercise',
          ),
          HabetTile(
            habitname: 'Writing',
          ),
          HabetTile(
            habitname: 'Meditation',
          ),
        ],
      ),
    );
  }
}
