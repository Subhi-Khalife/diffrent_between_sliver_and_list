import 'package:flutter/material.dart';
import 'package:listview_sliverlist/list_view_builder_soultion.dart';
import 'package:listview_sliverlist/sliver_list_solution.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SliverListSolution(),
    );
  }
}
