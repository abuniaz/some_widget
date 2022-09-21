import 'package:flutter/material.dart';

class PupopWidget extends StatefulWidget {
  const PupopWidget({Key? key}) : super(key: key);

  @override
  State<PupopWidget> createState() => _PupopWidgetState();
}

class _PupopWidgetState extends State<PupopWidget> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenu'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: ((context) => [
                  PopupMenuItem(
                    value: firstPage,
                    child: Text(firstPage),
                  ),
                  PopupMenuItem(
                    value: secondPage,
                    child: Text(secondPage),
                  )
                ]),
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
