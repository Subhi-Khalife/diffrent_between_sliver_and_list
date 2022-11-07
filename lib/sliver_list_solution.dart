import 'package:flutter/material.dart';

class SliverListSolution extends StatefulWidget {
  const SliverListSolution({Key? key}) : super(key: key);

  @override
  State<SliverListSolution> createState() => _SliverListSolutionState();
}

class _SliverListSolutionState extends State<SliverListSolution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 40,left: 19,bottom: 29),
                child: Text(
                  "Diffrent between sliverList and List",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
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
                },
                childCount: 1000,
              ),
            )
          ],
        ),
      ),
    );
  }
}
