import 'package:flutter/material.dart';

class ListViewSolution extends StatefulWidget {
  const ListViewSolution({Key? key}) : super(key: key);

  @override
  State<ListViewSolution> createState() => _ListViewSolutionState();
}

class _ListViewSolutionState extends State<ListViewSolution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 19, bottom: 29),
              child: Text(
                "Diffrent between sliverList and List",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1000000,
                itemBuilder: (context, index) {
                  // print("the current index is $index");
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("The current index is : $index"),
                          )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
