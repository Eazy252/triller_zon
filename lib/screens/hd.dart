import 'package:flutter/material.dart';

class hd extends StatefulWidget {
  const hd({Key? key}) : super(key: key);

  @override
  State<hd> createState() => _hdState();
}

class _hdState extends State<hd> {
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
                child: Center(child: Text('$index')),
              );
            }),
      ),
    );
  }
}
