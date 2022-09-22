import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoMenuContext extends StatelessWidget {
  const CupertinoMenuContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  child: const Text('Action one'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: const Text('Action two'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
              child: Image.network(
                  'https://play.google.com/store/apps/details?id=com.google.android.youtube&hl=en_US&gl=US')),
        ),
      ),
    );
  }
}
