import 'package:flutter/material.dart';

class liveTv extends StatefulWidget {
  const liveTv({Key? key}) : super(key: key);

  @override
  State<liveTv> createState() => _historyState();
}

class _historyState extends State<liveTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 300,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.amber,
                child: Center(
                  child: Text('$index'),
                ),
              );
            }),
      ),
    );
  }
}
